import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B007.C001
import Seq.Opaque.C018
import Seq.Opaque.C020

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A016800: a(n) = (3*n + 2)^12.

The programs for A016800, the canonical program `A016800.P2355351043279247607` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016800 has offset 0).

The definition of A016800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^12` (program `A016800.P2355351043279247607`, by `A016800.P2355351043279247607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016800.P2355351043279247607

`(3*n+2)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016800

/-- `(3*n+2)^12` -/
def P2355351043279247607.Spec : Prop :=
  ∀ n, (P2355351043279247607.a n : ℤ) = A016800 n

theorem P2355351043279247607.correct : P2355351043279247607.Spec := by
  intro n
  simp only [A016800]

end A016800

/-! ## A016800.P9354556118526212481

`record[(n+2)^gcd(3, n)^4]`
-/

namespace A016800.P9354556118526212481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 3 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016800.P9354556118526212481

namespace A016800

/-- `record[(n+2)^gcd(3, n)^4]` -/
def P9354556118526212481.Spec : Prop :=
  ∀ n, (P9354556118526212481.a n : ℤ) = A016800 n

end A016800

/-! ## A016800.P14043922354811537947

`((n+1-record[xor(3, n)])^6)²`
-/

namespace A016800.P14043922354811537947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)) ^ 6) ^ 2

end

end A016800.P14043922354811537947

namespace A016800

/-- `((n+1-record[xor(3, n)])^6)²` -/
def P14043922354811537947.Spec : Prop :=
  ∀ n, P14043922354811537947.a n = A016800 n

end A016800

/-! ## A016800.P5181581730412585379

`(3*n+2)²²²*(record[xor(3, n)]-(n+1))²²`
-/

namespace A016800.P5181581730412585379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((3 * n + 2) ^ 2) ^ 2) ^ 2 : ℤ) * (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)) ^ 2) ^ 2

end

end A016800.P5181581730412585379

namespace A016800

/-- `(3*n+2)²²²*(record[xor(3, n)]-(n+1))²²` -/
def P5181581730412585379.Spec : Prop :=
  ∀ n, P5181581730412585379.a n = A016800 n

end A016800

/-! ## A016800.P12917793355391895431

`A016794(n)²`
-/

namespace A016800.P12917793355391895431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016794 n ^ 2

end

end A016800.P12917793355391895431

namespace A016800

/-- `A016794(n)²` -/
def P12917793355391895431.Spec : Prop :=
  ∀ n, P12917793355391895431.a n = A016800 n

end A016800

/-! ## A016800.P15385005069599434338

`A016791(n)²²`
-/

namespace A016800.P15385005069599434338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 n ^ 2) ^ 2

end

end A016800.P15385005069599434338

namespace A016800

/-- `A016791(n)²²` -/
def P15385005069599434338.Spec : Prop :=
  ∀ n, P15385005069599434338.a n = A016800 n

end A016800

/-! ## A016800.P688214331196172674

`(A016789(n)^6)²`
-/

namespace A016800.P688214331196172674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n ^ 6) ^ 2

end

end A016800.P688214331196172674

namespace A016800

/-- `(A016789(n)^6)²` -/
def P688214331196172674.Spec : Prop :=
  ∀ n, P688214331196172674.a n = A016800 n

end A016800

/-! ## A016800.P879150685748927573

`(3*n+2)*A016799(n)`
-/

namespace A016800.P879150685748927573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016799 n

end

end A016800.P879150685748927573

namespace A016800

/-- `(3*n+2)*A016799(n)` -/
def P879150685748927573.Spec : Prop :=
  ∀ n, P879150685748927573.a n = A016800 n

end A016800

/-! ## A016800.P18084201352675063557

`((A016777(n)+1)²^3)²`
-/

namespace A016800.P18084201352675063557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016777 n + 1) ^ 2) ^ 3) ^ 2

end

end A016800.P18084201352675063557

namespace A016800

/-- `((A016777(n)+1)²^3)²` -/
def P18084201352675063557.Spec : Prop :=
  ∀ n, P18084201352675063557.a n = A016800 n

end A016800

/-! ## A016800.P5108963055046842981

`(∑[A063122(n+1)]^3)²`
-/

namespace A016800.P5108963055046842981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A016800.P5108963055046842981

namespace A016800

/-- `(∑[A063122(n+1)]^3)²` -/
def P5108963055046842981.Spec : Prop :=
  ∀ n, P5108963055046842981.a n = A016800 n

end A016800

/-! ## A016800.P18228347443302226453

`((1-A004767(n)+n)^3)²²`
-/

namespace A016800.P18228347443302226453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A004767 n + (n : ℤ)) ^ 3) ^ 2) ^ 2

end

end A016800.P18228347443302226453

namespace A016800

/-- `((1-A004767(n)+n)^3)²²` -/
def P18228347443302226453.Spec : Prop :=
  ∀ n, P18228347443302226453.a n = A016800 n

end A016800

/-! ## A016800.P1883810348317236394

`A016791(n)*A016797(n)`
-/

namespace A016800.P1883810348317236394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A016797 n

end

end A016800.P1883810348317236394

namespace A016800

/-- `A016791(n)*A016797(n)` -/
def P1883810348317236394.Spec : Prop :=
  ∀ n, P1883810348317236394.a n = A016800 n

end A016800

/-! ## A016800.P4344658887747550686

`A016792(n)*A016796(n)`
-/

namespace A016800.P4344658887747550686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n * A016796 n

end

end A016800.P4344658887747550686

namespace A016800

/-- `A016792(n)*A016796(n)` -/
def P4344658887747550686.Spec : Prop :=
  ∀ n, P4344658887747550686.a n = A016800 n

end A016800

/-! ## A016800.P12796242532899837983

`A016793(n)*A016795(n)`
-/

namespace A016800.P12796242532899837983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n * A016795 n

end

end A016800.P12796242532899837983

namespace A016800

/-- `A016793(n)*A016795(n)` -/
def P12796242532899837983.Spec : Prop :=
  ∀ n, P12796242532899837983.a n = A016800 n

end A016800

/-! ## A016800.P14205097966622187842

`(A016789(n)*A016793(n))²`
-/

namespace A016800.P14205097966622187842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n * A016793 n) ^ 2

end

end A016800.P14205097966622187842

namespace A016800

/-- `(A016789(n)*A016793(n))²` -/
def P14205097966622187842.Spec : Prop :=
  ∀ n, P14205097966622187842.a n = A016800 n

end A016800

/-! ## A016800.P899290630488837713

`A016789(n)²*A016798(n)`
-/

namespace A016800.P899290630488837713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016798 n

end

end A016800.P899290630488837713

namespace A016800

/-- `A016789(n)²*A016798(n)` -/
def P899290630488837713.Spec : Prop :=
  ∀ n, P899290630488837713.a n = A016800 n

end A016800

/-! ## A016800.P9247790118306362924

`(A016795(n)/A016789(n))²`
-/

namespace A016800.P9247790118306362924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016795 n : ℚ) / (A016789 n : ℚ)) ^ 2

end

end A016800.P9247790118306362924

namespace A016800

/-- `(A016795(n)/A016789(n))²` -/
def P9247790118306362924.Spec : Prop :=
  ∀ n, P9247790118306362924.a n = (A016800 n : ℚ)

end A016800

/-! ## A016800.P1007625271431837499

`(A016798(n)/A016792(n))²`
-/

namespace A016800.P1007625271431837499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016798 n : ℚ) / (A016792 n : ℚ)) ^ 2

end

end A016800.P1007625271431837499

namespace A016800

/-- `(A016798(n)/A016792(n))²` -/
def P1007625271431837499.Spec : Prop :=
  ∀ n, P1007625271431837499.a n = (A016800 n : ℚ)

end A016800

/-! ## A016800.P1908504080994260666

`(A016799(n)/A016793(n))²`
-/

namespace A016800.P1908504080994260666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016799 n : ℚ) / (A016793 n : ℚ)) ^ 2

end

end A016800.P1908504080994260666

namespace A016800

/-- `(A016799(n)/A016793(n))²` -/
def P1908504080994260666.Spec : Prop :=
  ∀ n, P1908504080994260666.a n = (A016800 n : ℚ)

end A016800

/-! ## A016800.P17018240013390341675

`gcd(A016795(n), A017238(n))²`
-/

namespace A016800.P17018240013390341675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016795 n) (A017238 n) ^ 2

end

end A016800.P17018240013390341675

namespace A016800

/-- `gcd(A016795(n), A017238(n))²` -/
def P17018240013390341675.Spec : Prop :=
  ∀ n, (P17018240013390341675.a n : ℤ) = A016800 n

end A016800

/-!
# A016801: Expansion of g.f. 1/((1 - 3*x)*(1 - 4*x)*(1 - 7*x)).

The programs for A016801, the canonical program `A016801.P14614971766338851379` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016801 has offset 0).

The definition of A016801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+61x^2-84x^3))` (program `A016801.P14614971766338851379`, by `A016801.P14614971766338851379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016801.P14614971766338851379

`ogf(1/(1-14x+61x^2-84x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016801

/-- `ogf(1/(1-14x+61x^2-84x^3))` -/
def P14614971766338851379.Spec : Prop :=
  ∀ n, P14614971766338851379.a n = A016801 n

theorem P14614971766338851379.correct : P14614971766338851379.Spec := by
  intro n
  simp only [A016801]

end A016801

/-! ## A016801.P17970875120900501475

`11*a(n-1)-28*a(n-2)+3^n` with `a(0)=1, a(1)=14`
-/

namespace A016801.P17970875120900501475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  11 * a (n - 1) - 28 * a (n - 2) + (3 ^ n : ℤ)

end

end A016801.P17970875120900501475

namespace A016801

/-- `11*a(n-1)-28*a(n-2)+3^n` -/
def P17970875120900501475.Spec : Prop :=
  ∀ n, P17970875120900501475.a n = A016801 n

end A016801

/-! ## A016801.P3126527793410511499

`A016150(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A016801.P3126527793410511499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016150 n + 3 * a (n - 1)

end

end A016801.P3126527793410511499

namespace A016801

/-- `A016150(n)+3*a(n-1)` -/
def P3126527793410511499.Spec : Prop :=
  ∀ n, P3126527793410511499.a n = A016801 n

end A016801

/-! ## A016801.P1847897026798715623

`A016138(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A016801.P1847897026798715623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 4 * a (n - 1)

end

end A016801.P1847897026798715623

namespace A016801

/-- `A016138(n)+4*a(n-1)` -/
def P1847897026798715623.Spec : Prop :=
  ∀ n, P1847897026798715623.a n = A016801 n

end A016801

/-! ## A016801.P7357220375678178093

`2*A016212(n)-A016208(n)`
-/

namespace A016801.P7357220375678178093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016212 n - A016208 n

end

end A016801.P7357220375678178093

namespace A016801

/-- `2*A016212(n)-A016208(n)` -/
def P7357220375678178093.Spec : Prop :=
  ∀ n, P7357220375678178093.a n = A016801 n

end A016801

/-! ## A016801.P6148199025518217553

`A167936(A004275(n+2))+7*a(n-1)` with `a(0)=1`
-/

namespace A016801.P6148199025518217553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167936 (A004275 (n + 2)).toNat + 7 * a (n - 1)

end

end A016801.P6148199025518217553

namespace A016801

/-- `A167936(A004275(n+2))+7*a(n-1)` -/
def P6148199025518217553.Spec : Prop :=
  ∀ n, P6148199025518217553.a n = A016801 n

end A016801

/-! ## A016801.P7943764501334986084

`Δ[A016223(n)-A016212(n)]`
-/

namespace A016801.P7943764501334986084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016223 n - A016212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016801.P7943764501334986084

namespace A016801

/-- `Δ[A016223(n)-A016212(n)]` -/
def P7943764501334986084.Spec : Prop :=
  ∀ n, P7943764501334986084.a n = A016801 n

end A016801

/-! ## A016801.P15586593881137688292

`A016150(n+1)-A016138(n+1)`
-/

namespace A016801.P15586593881137688292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016150 (n + 1) - A016138 (n + 1)

end

end A016801.P15586593881137688292

namespace A016801

/-- `A016150(n+1)-A016138(n+1)` -/
def P15586593881137688292.Spec : Prop :=
  ∀ n, P15586593881137688292.a n = A016801 n

end A016801

/-!
# A016802: a(n) = (4*n)^2.

The programs for A016802, the canonical program `A016802.P8146297889048034948` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016802 has offset 0).

The definition of A016802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)²` (program `A016802.P8146297889048034948`, by `A016802.P8146297889048034948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016802.P8146297889048034948

`(4*n)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016802

/-- `(4*n)²` -/
def P8146297889048034948.Spec : Prop :=
  ∀ n, (P8146297889048034948.a n : ℤ) = A016802 n

theorem P8146297889048034948.correct : P8146297889048034948.Spec := by
  intro n
  simp only [A016802]

end A016802

/-!
# A016803: a(n) = (4*n)^3.

The programs for A016803, the canonical program `A016803.P6829044310004952096` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016803 has offset 0).

The definition of A016803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^3` (program `A016803.P6829044310004952096`, by `A016803.P6829044310004952096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016803.P6829044310004952096

`(4*n)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016803

/-- `(4*n)^3` -/
def P6829044310004952096.Spec : Prop :=
  ∀ n, (P6829044310004952096.a n : ℤ) = A016803 n

theorem P6829044310004952096.correct : P6829044310004952096.Spec := by
  intro n
  simp only [A016803]

end A016803

/-!
# A016804: a(n) = (4*n)^4.

The programs for A016804, the canonical program `A016804.P11230583067821047086` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016804 has offset 0).

The definition of A016804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^4` (program `A016804.P11230583067821047086`, by `A016804.P11230583067821047086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016804.P11230583067821047086

`(4*n)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016804

/-- `(4*n)^4` -/
def P11230583067821047086.Spec : Prop :=
  ∀ n, (P11230583067821047086.a n : ℤ) = A016804 n

theorem P11230583067821047086.correct : P11230583067821047086.Spec := by
  intro n
  simp only [A016804]

end A016804

/-!
# A016805: a(n) = (4*n)^5.

The programs for A016805, the canonical program `A016805.P8243654431301060818` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016805 has offset 0).

The definition of A016805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^5` (program `A016805.P8243654431301060818`, by `A016805.P8243654431301060818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016805.P8243654431301060818

`(4*n)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016805

/-- `(4*n)^5` -/
def P8243654431301060818.Spec : Prop :=
  ∀ n, (P8243654431301060818.a n : ℤ) = A016805 n

theorem P8243654431301060818.correct : P8243654431301060818.Spec := by
  intro n
  simp only [A016805]

end A016805

/-!
# A016806: a(n) = (4n)^6.

The programs for A016806, the canonical program `A016806.P14416645517676833584` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016806 has offset 0).

The definition of A016806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^6` (program `A016806.P14416645517676833584`, by `A016806.P14416645517676833584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016806.P14416645517676833584

`(4*n)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016806

/-- `(4*n)^6` -/
def P14416645517676833584.Spec : Prop :=
  ∀ n, (P14416645517676833584.a n : ℤ) = A016806 n

theorem P14416645517676833584.correct : P14416645517676833584.Spec := by
  intro n
  simp only [A016806]

end A016806

/-!
# A016807: a(n) = (4*n)^7.

The programs for A016807, the canonical program `A016807.P3617930477537150980` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016807 has offset 0).

The definition of A016807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^7` (program `A016807.P3617930477537150980`, by `A016807.P3617930477537150980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016807.P3617930477537150980

`(4*n)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016807

/-- `(4*n)^7` -/
def P3617930477537150980.Spec : Prop :=
  ∀ n, (P3617930477537150980.a n : ℤ) = A016807 n

theorem P3617930477537150980.correct : P3617930477537150980.Spec := by
  intro n
  simp only [A016807]

end A016807

/-!
# A016808: a(n) = (4n)^8.

The programs for A016808, the canonical program `A016808.P6212473385868604025` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016808 has offset 0).

The definition of A016808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^8` (program `A016808.P6212473385868604025`, by `A016808.P6212473385868604025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016808.P6212473385868604025

`(4*n)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016808

/-- `(4*n)^8` -/
def P6212473385868604025.Spec : Prop :=
  ∀ n, (P6212473385868604025.a n : ℤ) = A016808 n

theorem P6212473385868604025.correct : P6212473385868604025.Spec := by
  intro n
  simp only [A016808]

end A016808

/-!
# A016809: a(n) = (4n)^9.

The programs for A016809, the canonical program `A016809.P17782412585984742465` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016809 has offset 0).

The definition of A016809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^9` (program `A016809.P17782412585984742465`, by `A016809.P17782412585984742465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016809.P17782412585984742465

`(4*n)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016809

/-- `(4*n)^9` -/
def P17782412585984742465.Spec : Prop :=
  ∀ n, (P17782412585984742465.a n : ℤ) = A016809 n

theorem P17782412585984742465.correct : P17782412585984742465.Spec := by
  intro n
  simp only [A016809]

end A016809

/-!
# A016810: a(n) = (4n)^10.

The programs for A016810, the canonical program `A016810.P2792318698775462708` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016810 has offset 0).

The definition of A016810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^10` (program `A016810.P2792318698775462708`, by `A016810.P2792318698775462708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016810.P2792318698775462708

`(4*n)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016810

/-- `(4*n)^10` -/
def P2792318698775462708.Spec : Prop :=
  ∀ n, (P2792318698775462708.a n : ℤ) = A016810 n

theorem P2792318698775462708.correct : P2792318698775462708.Spec := by
  intro n
  simp only [A016810]

end A016810

/-!
# A016811: a(n) = (4*n)^11.

The programs for A016811, the canonical program `A016811.P10441079780307166046` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016811 has offset 0).

The definition of A016811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^11` (program `A016811.P10441079780307166046`, by `A016811.P10441079780307166046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016811.P10441079780307166046

`(4*n)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016811

/-- `(4*n)^11` -/
def P10441079780307166046.Spec : Prop :=
  ∀ n, (P10441079780307166046.a n : ℤ) = A016811 n

theorem P10441079780307166046.correct : P10441079780307166046.Spec := by
  intro n
  simp only [A016811]

end A016811

/-!
# A016812: a(n) = (4*n)^12.

The programs for A016812, the canonical program `A016812.P8941546110986675467` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016812 has offset 0).

The definition of A016812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^12` (program `A016812.P8941546110986675467`, by `A016812.P8941546110986675467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016812.P8941546110986675467

`(4*n)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016812

/-- `(4*n)^12` -/
def P8941546110986675467.Spec : Prop :=
  ∀ n, (P8941546110986675467.a n : ℤ) = A016812 n

theorem P8941546110986675467.correct : P8941546110986675467.Spec := by
  intro n
  simp only [A016812]

end A016812

/-!
# A016813: a(n) = 4*n + 1.

The programs for A016813, the canonical program `A016813.P15626904835145642280` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016813 has offset 0).

The definition of A016813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n+1` (program `A016813.P15626904835145642280`, by `A016813.P15626904835145642280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016813.P15626904835145642280

`4*n+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016813

/-- `4*n+1` -/
def P15626904835145642280.Spec : Prop :=
  ∀ n, (P15626904835145642280.a n : ℤ) = A016813 n

theorem P15626904835145642280.correct : P15626904835145642280.Spec := by
  intro n
  simp only [A016813]

end A016813

/-!
# A016814: a(n) = (4*n + 1)^2.

The programs for A016814, the canonical program `A016814.P5668709183610020667` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016814 has offset 0).

The definition of A016814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)²` (program `A016814.P5668709183610020667`, by `A016814.P5668709183610020667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016814.P5668709183610020667

`(4*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016814

/-- `(4*n+1)²` -/
def P5668709183610020667.Spec : Prop :=
  ∀ n, (P5668709183610020667.a n : ℤ) = A016814 n

theorem P5668709183610020667.correct : P5668709183610020667.Spec := by
  intro n
  simp only [A016814]

end A016814

/-! ## A016814.P9571683512244490302

`a(n-1)+32*n-8` with `a(0)=1`
-/

namespace A016814.P9571683512244490302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (32 * n : ℤ) - 8

end

end A016814.P9571683512244490302

namespace A016814

/-- `a(n-1)+32*n-8` -/
def P9571683512244490302.Spec : Prop :=
  ∀ n, P9571683512244490302.a n = A016814 n

theorem P9571683512244490302.correct : P9571683512244490302.Spec := by
  intro n
  induction n with
  | zero => simp [A016814, A016814.P9571683512244490302.a, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016814, Nat.add_sub_cancel, A016814.P9571683512244490302.a, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016814

/-! ## A016814.P8852049185721642586

`A272399(n+1)-A014105(n)`
-/

namespace A016814.P8852049185721642586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1) - A014105 n

end

end A016814.P8852049185721642586

namespace A016814

/-- `A272399(n+1)-A014105(n)` -/
def P8852049185721642586.Spec : Prop :=
  ∀ n, P8852049185721642586.a n = A016814 n

end A016814

/-! ## A016814.P2348886271579027739

`A016754(2*n)`
-/

namespace A016814.P2348886271579027739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (2 * n)

end

end A016814.P2348886271579027739

namespace A016814

/-- `A016754(2*n)` -/
def P2348886271579027739.Spec : Prop :=
  ∀ n, P2348886271579027739.a n = A016814 n

end A016814

/-! ## A016814.P14028727068744762789

`or(1, 4*n)^2`
-/

namespace A016814.P14028727068744762789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n) ^ 2

end

end A016814.P14028727068744762789

namespace A016814

/-- `or(1, 4*n)^2` -/
def P14028727068744762789.Spec : Prop :=
  ∀ n, (P14028727068744762789.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P2917700751648420485

`xor(1, 4*n)^2`
-/

namespace A016814.P2917700751648420485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n) ^ 2

end

end A016814.P2917700751648420485

namespace A016814

/-- `xor(1, 4*n)^2` -/
def P2917700751648420485.Spec : Prop :=
  ∀ n, (P2917700751648420485.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P14718254093150879047

`record[(1-lcm(2, n))²]`
-/

namespace A016814.P14718254093150879047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P14718254093150879047

namespace A016814

/-- `record[(1-lcm(2, n))²]` -/
def P14718254093150879047.Spec : Prop :=
  ∀ n, P14718254093150879047.a n = A016814 n

end A016814

/-! ## A016814.P2732906844627880480

`record[xor(3, or(2, n))²]`
-/

namespace A016814.P2732906844627880480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P2732906844627880480

namespace A016814

/-- `record[xor(3, or(2, n))²]` -/
def P2732906844627880480.Spec : Prop :=
  ∀ n, (P2732906844627880480.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P13966331028132229368

`or(2, 8*n)²/4`
-/

namespace A016814.P13966331028132229368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (8 * n) ^ 2 : ℚ) / 4

end

end A016814.P13966331028132229368

namespace A016814

/-- `or(2, 8*n)²/4` -/
def P13966331028132229368.Spec : Prop :=
  ∀ n, P13966331028132229368.a n = (A016814 n : ℚ)

end A016814

/-! ## A016814.P11232040686054518995

`xor(2, 8*n)²/4`
-/

namespace A016814.P11232040686054518995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (8 * n) ^ 2 : ℚ) / 4

end

end A016814.P11232040686054518995

namespace A016814

/-- `xor(2, 8*n)²/4` -/
def P11232040686054518995.Spec : Prop :=
  ∀ n, P11232040686054518995.a n = (A016814 n : ℚ)

end A016814

/-! ## A016814.P13903114824017516129

`or(1, or(1, 4*n)²)`
-/

namespace A016814.P13903114824017516129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (4 * n) ^ 2)

end

end A016814.P13903114824017516129

namespace A016814

/-- `or(1, or(1, 4*n)²)` -/
def P13903114824017516129.Spec : Prop :=
  ∀ n, (P13903114824017516129.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P7505522378075390567

`Δ[C(2*n, 2)]^2`
-/

namespace A016814.P7505522378075390567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A016814.P7505522378075390567

namespace A016814

/-- `Δ[C(2*n, 2)]^2` -/
def P7505522378075390567.Spec : Prop :=
  ∀ n, P7505522378075390567.a n = A016814 n

end A016814

/-! ## A016814.P5099564206660814538

`record[(1-n)^and(3, n)]`
-/

namespace A016814.P5099564206660814538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ Nat.land 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P5099564206660814538

namespace A016814

/-- `record[(1-n)^and(3, n)]` -/
def P5099564206660814538.Spec : Prop :=
  ∀ n, P5099564206660814538.a n = A016814 n

end A016814

/-! ## A016814.P7446581524539777056

`∑[a(n-1)+32]` with `a(0)=1, a(1)=24`
-/

namespace A016814.P7446581524539777056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016814.P7446581524539777056

namespace A016814

/-- `∑[a(n-1)+32]` -/
def P7446581524539777056.Spec : Prop :=
  ∀ n, (P7446581524539777056.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P1136435806062122149

`record[(2*xor(1, n)-1)²]`
-/

namespace A016814.P1136435806062122149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.xor 1 n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P1136435806062122149

namespace A016814

/-- `record[(2*xor(1, n)-1)²]` -/
def P1136435806062122149.Spec : Prop :=
  ∀ n, P1136435806062122149.a n = A016814 n

end A016814

/-! ## A016814.P18046533367563743363

`sqrt(record[xor(3, or(2, n))^4])`
-/

namespace A016814.P18046533367563743363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A016814.P18046533367563743363

namespace A016814

/-- `sqrt(record[xor(3, or(2, n))^4])` -/
def P18046533367563743363.Spec : Prop :=
  ∀ n, P18046533367563743363.a n = (A016814 n : ℝ)

end A016814

/-! ## A016814.P18205623032789302561

`record[(gcd(4, 1-n)+n)²]`
-/

namespace A016814.P18205623032789302561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P18205623032789302561

namespace A016814

/-- `record[(gcd(4, 1-n)+n)²]` -/
def P18205623032789302561.Spec : Prop :=
  ∀ n, (P18205623032789302561.a n : ℤ) = A016814 n

end A016814

/-! ## A016814.P4428170692776050414

`record[(-(n+3))^(n%4)]`
-/

namespace A016814.P4428170692776050414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 3 : ℤ)) ^ (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016814.P4428170692776050414

namespace A016814

/-- `record[(-(n+3))^(n%4)]` -/
def P4428170692776050414.Spec : Prop :=
  ∀ n, P4428170692776050414.a n = A016814 n

end A016814

/-! ## A016814.P2434846191433566960

`∑[ogf((1+22x+9x^2)/(1-2x+x^2))]`
-/

namespace A016814.P2434846191433566960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016814.P2434846191433566960

namespace A016814

/-- `∑[ogf((1+22x+9x^2)/(1-2x+x^2))]` -/
def P2434846191433566960.Spec : Prop :=
  ∀ n, P2434846191433566960.a n = A016814 n

end A016814

/-!
# A016815: a(n) = (4*n + 1)^3.

The programs for A016815, the canonical program `A016815.P10670090077902171970` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016815 has offset 0).

The definition of A016815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^3` (program `A016815.P10670090077902171970`, by `A016815.P10670090077902171970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016815.P10670090077902171970

`(4*n+1)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016815

/-- `(4*n+1)^3` -/
def P10670090077902171970.Spec : Prop :=
  ∀ n, (P10670090077902171970.a n : ℤ) = A016815 n

theorem P10670090077902171970.correct : P10670090077902171970.Spec := by
  intro n
  simp only [A016815]

end A016815

/-! ## A016815.P14822285164713851617

`A000578(A016813(n))`
-/

namespace A016815.P14822285164713851617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A016813 n).toNat

end

end A016815.P14822285164713851617

namespace A016815

/-- `A000578(A016813(n))` -/
def P14822285164713851617.Spec : Prop :=
  ∀ n, P14822285164713851617.a n = A016815 n

end A016815

/-! ## A016815.P17780221629445310820

`record[(xor(3, n)-2)^3]`
-/

namespace A016815.P17780221629445310820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016815.P17780221629445310820

namespace A016815

/-- `record[(xor(3, n)-2)^3]` -/
def P17780221629445310820.Spec : Prop :=
  ∀ n, P17780221629445310820.a n = A016815 n

end A016815

/-! ## A016815.P194228989149880994

`root(or(1, 4*n), 1/3)`
-/

namespace A016815.P194228989149880994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A016815.P194228989149880994

namespace A016815

/-- `root(or(1, 4*n), 1/3)` -/
def P194228989149880994.Spec : Prop :=
  ∀ n, P194228989149880994.a n = (A016815 n : ℝ)

end A016815

/-! ## A016815.P347066073959710328

`root(xor(1, 4*n), 1/3)`
-/

namespace A016815.P347066073959710328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A016815.P347066073959710328

namespace A016815

/-- `root(xor(1, 4*n), 1/3)` -/
def P347066073959710328.Spec : Prop :=
  ∀ n, P347066073959710328.a n = (A016815 n : ℝ)

end A016815

/-! ## A016815.P4294054816460942329

`or(1, xor(1, 4*n)^3)`
-/

namespace A016815.P4294054816460942329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor 1 (4 * n) ^ 3)

end

end A016815.P4294054816460942329

namespace A016815

/-- `or(1, xor(1, 4*n)^3)` -/
def P4294054816460942329.Spec : Prop :=
  ∀ n, (P4294054816460942329.a n : ℤ) = A016815 n

end A016815

/-! ## A016815.P8514969402017377850

`record[(lcm(2, n+1)-1)^3]`
-/

namespace A016815.P8514969402017377850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016815.P8514969402017377850

namespace A016815

/-- `record[(lcm(2, n+1)-1)^3]` -/
def P8514969402017377850.Spec : Prop :=
  ∀ n, P8514969402017377850.a n = A016815 n

end A016815

/-! ## A016815.P15459744699452161269

`record[(gcd(4, 1-n)+n)^3]`
-/

namespace A016815.P15459744699452161269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (1 - (n : ℤ)) + n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016815.P15459744699452161269

namespace A016815

/-- `record[(gcd(4, 1-n)+n)^3]` -/
def P15459744699452161269.Spec : Prop :=
  ∀ n, (P15459744699452161269.a n : ℤ) = A016815 n

end A016815

/-! ## A016815.P11640420425531193826

`-Δ[-C(2*n, 2)]^3`
-/

namespace A016815.P11640420425531193826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) ^ 3)

end

end A016815.P11640420425531193826

namespace A016815

/-- `-Δ[-C(2*n, 2)]^3` -/
def P11640420425531193826.Spec : Prop :=
  ∀ n, P11640420425531193826.a n = A016815 n

end A016815

/-! ## A016815.P4503845643307458290

`Δ[C(2*n, 2)]²*Δ[C(2*n, 2)]`
-/

namespace A016815.P4503845643307458290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A016815.P4503845643307458290

namespace A016815

/-- `Δ[C(2*n, 2)]²*Δ[C(2*n, 2)]` -/
def P4503845643307458290.Spec : Prop :=
  ∀ n, P4503845643307458290.a n = A016815 n

end A016815

/-! ## A016815.P5719878186781331964

`sqrt(A016818(n))`
-/

namespace A016815.P5719878186781331964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016818 n : ℝ)

end

end A016815.P5719878186781331964

namespace A016815

/-- `sqrt(A016818(n))` -/
def P5719878186781331964.Spec : Prop :=
  ∀ n, P5719878186781331964.a n = (A016815 n : ℝ)

end A016815

/-! ## A016815.P7854607143053994586

`A017091(n)/8`
-/

namespace A016815.P7854607143053994586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017091 n : ℚ) / 8

end

end A016815.P7854607143053994586

namespace A016815

/-- `A017091(n)/8` -/
def P7854607143053994586.Spec : Prop :=
  ∀ n, P7854607143053994586.a n = (A016815 n : ℚ)

end A016815

/-! ## A016815.P8229351888061367232

`sqrt(sqrt(A016824(n)))`
-/

namespace A016815.P8229351888061367232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016824 n : ℝ))

end

end A016815.P8229351888061367232

namespace A016815

/-- `sqrt(sqrt(A016824(n)))` -/
def P8229351888061367232.Spec : Prop :=
  ∀ n, P8229351888061367232.a n = (A016815 n : ℝ)

end A016815

/-! ## A016815.P1231524852044612809

`sqrt(A016814(n)^3)`
-/

namespace A016815.P1231524852044612809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016814 n ^ 3 : ℝ)

end

end A016815.P1231524852044612809

namespace A016815

/-- `sqrt(A016814(n)^3)` -/
def P1231524852044612809.Spec : Prop :=
  ∀ n, P1231524852044612809.a n = (A016815 n : ℝ)

end A016815

/-! ## A016815.P14047438631397752972

`A016813(n)*A016814(n)`
-/

namespace A016815.P14047438631397752972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016814 n

end

end A016815.P14047438631397752972

namespace A016815

/-- `A016813(n)*A016814(n)` -/
def P14047438631397752972.Spec : Prop :=
  ∀ n, P14047438631397752972.a n = A016815 n

end A016815

/-! ## A016815.P6150098418153827886

`A016816(n)/A016813(n)`
-/

namespace A016815.P6150098418153827886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 n : ℚ) / (A016813 n : ℚ)

end

end A016815.P6150098418153827886

namespace A016815

/-- `A016816(n)/A016813(n)` -/
def P6150098418153827886.Spec : Prop :=
  ∀ n, P6150098418153827886.a n = (A016815 n : ℚ)

end A016815

/-! ## A016815.P3007383305263228415

`A016817(n)/A016814(n)`
-/

namespace A016815.P3007383305263228415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016817 n : ℚ) / (A016814 n : ℚ)

end

end A016815.P3007383305263228415

namespace A016815

/-- `A016817(n)/A016814(n)` -/
def P3007383305263228415.Spec : Prop :=
  ∀ n, P3007383305263228415.a n = (A016815 n : ℚ)

end A016815

/-! ## A016815.P15785982162493635453

`A016819(n)/A016816(n)`
-/

namespace A016815.P15785982162493635453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016819 n : ℚ) / (A016816 n : ℚ)

end

end A016815.P15785982162493635453

namespace A016815

/-- `A016819(n)/A016816(n)` -/
def P15785982162493635453.Spec : Prop :=
  ∀ n, P15785982162493635453.a n = (A016815 n : ℚ)

end A016815

/-! ## A016815.P4864390257671840991

`A016820(n)/A016817(n)`
-/

namespace A016815.P4864390257671840991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 n : ℚ) / (A016817 n : ℚ)

end

end A016815.P4864390257671840991

namespace A016815

/-- `A016820(n)/A016817(n)` -/
def P4864390257671840991.Spec : Prop :=
  ∀ n, P4864390257671840991.a n = (A016815 n : ℚ)

end A016815

/-! ## A016815.P6391999279042436342

`A014799(n)/A280059(n)`
-/

namespace A016815.P6391999279042436342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014799 n : ℚ) / (A280059 n : ℚ)

end

end A016815.P6391999279042436342

namespace A016815

/-- `A014799(n)/A280059(n)` -/
def P6391999279042436342.Spec : Prop :=
  ∀ n, P6391999279042436342.a n = (A016815 n : ℚ)

end A016815

/-!
# A016816: a(n) = (4n+1)^4.

The programs for A016816, the canonical program `A016816.P12433774529613122654` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016816 has offset 0).

The definition of A016816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^4` (program `A016816.P12433774529613122654`, by `A016816.P12433774529613122654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016816.P12433774529613122654

`(4*n+1)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016816

/-- `(4*n+1)^4` -/
def P12433774529613122654.Spec : Prop :=
  ∀ n, (P12433774529613122654.a n : ℤ) = A016816 n

theorem P12433774529613122654.correct : P12433774529613122654.Spec := by
  intro n
  simp only [A016816]

end A016816

/-! ## A016816.P12862728920505329514

`or(1, 4*n)²²`
-/

namespace A016816.P12862728920505329514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) ^ 2) ^ 2

end

end A016816.P12862728920505329514

namespace A016816

/-- `or(1, 4*n)²²` -/
def P12862728920505329514.Spec : Prop :=
  ∀ n, (P12862728920505329514.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P17361308695683610827

`xor(1, 4*n)²²`
-/

namespace A016816.P17361308695683610827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) ^ 2) ^ 2

end

end A016816.P17361308695683610827

namespace A016816

/-- `xor(1, 4*n)²²` -/
def P17361308695683610827.Spec : Prop :=
  ∀ n, (P17361308695683610827.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P6236254987604307123

`record[(1-lcm(2, n))^4]`
-/

namespace A016816.P6236254987604307123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 2 n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016816.P6236254987604307123

namespace A016816

/-- `record[(1-lcm(2, n))^4]` -/
def P6236254987604307123.Spec : Prop :=
  ∀ n, P6236254987604307123.a n = A016816 n

end A016816

/-! ## A016816.P14971423114808227630

`record[xor(3, or(2, n))^4]`
-/

namespace A016816.P14971423114808227630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016816.P14971423114808227630

namespace A016816

/-- `record[xor(3, or(2, n))^4]` -/
def P14971423114808227630.Spec : Prop :=
  ∀ n, (P14971423114808227630.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P12751975461753504326

`Δ[C(2*n, 2)]²²`
-/

namespace A016816.P12751975461753504326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016816.P12751975461753504326

namespace A016816

/-- `Δ[C(2*n, 2)]²²` -/
def P12751975461753504326.Spec : Prop :=
  ∀ n, P12751975461753504326.a n = A016816 n

end A016816

/-! ## A016816.P18035086435968276905

`(2-record[xor(3, n)])²²`
-/

namespace A016816.P18035086435968276905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)) ^ 2) ^ 2

end

end A016816.P18035086435968276905

namespace A016816

/-- `(2-record[xor(3, n)])²²` -/
def P18035086435968276905.Spec : Prop :=
  ∀ n, P18035086435968276905.a n = A016816 n

end A016816

/-! ## A016816.P14801971090236297690

`or(1, or(1, 4*n)^4)`
-/

namespace A016816.P14801971090236297690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (4 * n) ^ 4)

end

end A016816.P14801971090236297690

namespace A016816

/-- `or(1, or(1, 4*n)^4)` -/
def P14801971090236297690.Spec : Prop :=
  ∀ n, (P14801971090236297690.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P1657282706858985502

`eq[1, val(n+1, 2)]²²`
-/

namespace A016816.P1657282706858985502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2

end

end A016816.P1657282706858985502

namespace A016816

/-- `eq[1, val(n+1, 2)]²²` -/
def P1657282706858985502.Spec : Prop :=
  ∀ n, (P1657282706858985502.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P10660703988076860573

`lt[1, val(n+3, 2)]²²`
-/

namespace A016816.P10660703988076860573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016816.P10660703988076860573

namespace A016816

/-- `lt[1, val(n+3, 2)]²²` -/
def P10660703988076860573.Spec : Prop :=
  ∀ n, (P10660703988076860573.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P5446476820165991382

`lt[lcm(4, 1-n), n]²²`
-/

namespace A016816.P5446476820165991382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016816.P5446476820165991382

namespace A016816

/-- `lt[lcm(4, 1-n), n]²²` -/
def P5446476820165991382.Spec : Prop :=
  ∀ n, (P5446476820165991382.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P1282978624634446254

`record[n^and(4, (n+1)²)]`
-/

namespace A016816.P1282978624634446254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 4 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016816.P1282978624634446254

namespace A016816

/-- `record[n^and(4, (n+1)²)]` -/
def P1282978624634446254.Spec : Prop :=
  ∀ n, (P1282978624634446254.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P6598526959458495499

`eq[3, xor(n, n+1)]²²`
-/

namespace A016816.P6598526959458495499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2

end

end A016816.P6598526959458495499

namespace A016816

/-- `eq[3, xor(n, n+1)]²²` -/
def P6598526959458495499.Spec : Prop :=
  ∀ n, (P6598526959458495499.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P12816950891899254228

`lt[xor(3, n+2), n]²²`
-/

namespace A016816.P12816950891899254228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016816.P12816950891899254228

namespace A016816

/-- `lt[xor(3, n+2), n]²²` -/
def P12816950891899254228.Spec : Prop :=
  ∀ n, (P12816950891899254228.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P11252751792940756957

`lt[n, xor(3, n-1)]²²`
-/

namespace A016816.P11252751792940756957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A016816.P11252751792940756957

namespace A016816

/-- `lt[n, xor(3, n-1)]²²` -/
def P11252751792940756957.Spec : Prop :=
  ∀ n, (P11252751792940756957.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P11358086814416369827

`record[(2*xor(1, n)-1)^4]`
-/

namespace A016816.P11358086814416369827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.xor 1 n : ℤ) - 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016816.P11358086814416369827

namespace A016816

/-- `record[(2*xor(1, n)-1)^4]` -/
def P11358086814416369827.Spec : Prop :=
  ∀ n, P11358086814416369827.a n = A016816 n

end A016816

/-! ## A016816.P9869783305104419941

`record[(gcd(4, 1-n)+n)^4]`
-/

namespace A016816.P9869783305104419941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (1 - (n : ℤ)) + n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016816.P9869783305104419941

namespace A016816

/-- `record[(gcd(4, 1-n)+n)^4]` -/
def P9869783305104419941.Spec : Prop :=
  ∀ n, (P9869783305104419941.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P2815854178294684173

`eq[1, and(n, -(n+2))]²²`
-/

namespace A016816.P2815854178294684173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016816.P2815854178294684173

namespace A016816

/-- `eq[1, and(n, -(n+2))]²²` -/
def P2815854178294684173.Spec : Prop :=
  ∀ n, (P2815854178294684173.a n : ℤ) = A016816 n

end A016816

/-! ## A016816.P3022315601331876581

`(root(a(n-1), 4)+4)²²` with `a(0)=1`
-/

namespace A016816.P3022315601331876581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((a (n - 1) ^ (1 / (4 : ℝ)) + 4) ^ 2) ^ 2

end

end A016816.P3022315601331876581

namespace A016816

/-- `(root(a(n-1), 4)+4)²²` -/
def P3022315601331876581.Spec : Prop :=
  ∀ n, P3022315601331876581.a n = (A016816 n : ℝ)

end A016816

/-! ## A016816.P14647945935672958870

`record[a(n-2)+4]²²` with `a(0)=1, a(1)=0`
-/

namespace A016816.P14647945935672958870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016816.P14647945935672958870

namespace A016816

/-- `record[a(n-2)+4]²²` -/
def P14647945935672958870.Spec : Prop :=
  ∀ n, (P14647945935672958870.a n : ℤ) = A016816 n

end A016816

/-!
# A016817: a(n) = (4n+1)^5.

The programs for A016817, the canonical program `A016817.P16524033213654524335` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016817 has offset 0).

The definition of A016817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^5` (program `A016817.P16524033213654524335`, by `A016817.P16524033213654524335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016817.P16524033213654524335

`(4*n+1)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016817

/-- `(4*n+1)^5` -/
def P16524033213654524335.Spec : Prop :=
  ∀ n, (P16524033213654524335.a n : ℤ) = A016817 n

theorem P16524033213654524335.correct : P16524033213654524335.Spec := by
  intro n
  simp only [A016817]

end A016817

/-! ## A016817.P11948829345207562335

`record[(xor(3, n)-2)^5]`
-/

namespace A016817.P11948829345207562335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 2) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016817.P11948829345207562335

namespace A016817

/-- `record[(xor(3, n)-2)^5]` -/
def P11948829345207562335.Spec : Prop :=
  ∀ n, P11948829345207562335.a n = A016817 n

end A016817

/-! ## A016817.P5205302159110120567

`record[xor(3, or(2, n))^5]`
-/

namespace A016817.P5205302159110120567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016817.P5205302159110120567

namespace A016817

/-- `record[xor(3, or(2, n))^5]` -/
def P5205302159110120567.Spec : Prop :=
  ∀ n, (P5205302159110120567.a n : ℤ) = A016817 n

end A016817

/-! ## A016817.P7148322859310646902

`root(xor(1, 4*n), 1/5)`
-/

namespace A016817.P7148322859310646902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ))

end

end A016817.P7148322859310646902

namespace A016817

/-- `root(xor(1, 4*n), 1/5)` -/
def P7148322859310646902.Spec : Prop :=
  ∀ n, P7148322859310646902.a n = (A016817 n : ℝ)

end A016817

/-! ## A016817.P8903412364614207453

`or(1, or(1, 4*n)^5)`
-/

namespace A016817.P8903412364614207453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (4 * n) ^ 5)

end

end A016817.P8903412364614207453

namespace A016817

/-- `or(1, or(1, 4*n)^5)` -/
def P8903412364614207453.Spec : Prop :=
  ∀ n, (P8903412364614207453.a n : ℤ) = A016817 n

end A016817

/-! ## A016817.P14701747297049157808

`record[(lcm(2, n+1)-1)^5]`
-/

namespace A016817.P14701747297049157808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℤ) - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016817.P14701747297049157808

namespace A016817

/-- `record[(lcm(2, n+1)-1)^5]` -/
def P14701747297049157808.Spec : Prop :=
  ∀ n, P14701747297049157808.a n = A016817 n

end A016817

/-! ## A016817.P12528252597361096303

`record[(gcd(4, 1-n)+n)^5]`
-/

namespace A016817.P12528252597361096303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (1 - (n : ℤ)) + n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016817.P12528252597361096303

namespace A016817

/-- `record[(gcd(4, 1-n)+n)^5]` -/
def P12528252597361096303.Spec : Prop :=
  ∀ n, (P12528252597361096303.a n : ℤ) = A016817 n

end A016817

/-! ## A016817.P16408489318604545664

`-Δ[-C(2*n, 2)]^5`
-/

namespace A016817.P16408489318604545664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) ^ 5)

end

end A016817.P16408489318604545664

namespace A016817

/-- `-Δ[-C(2*n, 2)]^5` -/
def P16408489318604545664.Spec : Prop :=
  ∀ n, P16408489318604545664.a n = A016817 n

end A016817

/-! ## A016817.P5374174941305466366

`sqrt(A016822(n))`
-/

namespace A016817.P5374174941305466366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016822 n : ℝ)

end

end A016817.P5374174941305466366

namespace A016817

/-- `sqrt(A016822(n))` -/
def P5374174941305466366.Spec : Prop :=
  ∀ n, P5374174941305466366.a n = (A016817 n : ℝ)

end A016817

/-! ## A016817.P4906737585036787342

`sqrt(A016814(n)^5)`
-/

namespace A016817.P4906737585036787342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016814 n ^ 5 : ℝ)

end

end A016817.P4906737585036787342

namespace A016817

/-- `sqrt(A016814(n)^5)` -/
def P4906737585036787342.Spec : Prop :=
  ∀ n, P4906737585036787342.a n = (A016817 n : ℝ)

end A016817

/-! ## A016817.P16872952202944520066

`A016813(n)*A016816(n)`
-/

namespace A016817.P16872952202944520066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016816 n

end

end A016817.P16872952202944520066

namespace A016817

/-- `A016813(n)*A016816(n)` -/
def P16872952202944520066.Spec : Prop :=
  ∀ n, P16872952202944520066.a n = A016817 n

end A016817

/-! ## A016817.P7172794006715308066

`A016814(n)*A016815(n)`
-/

namespace A016817.P7172794006715308066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n * A016815 n

end

end A016817.P7172794006715308066

namespace A016817

/-- `A016814(n)*A016815(n)` -/
def P7172794006715308066.Spec : Prop :=
  ∀ n, P7172794006715308066.a n = A016817 n

end A016817

/-! ## A016817.P17112745404113167581

`A016818(n)/A016813(n)`
-/

namespace A016817.P17112745404113167581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016818 n : ℚ) / (A016813 n : ℚ)

end

end A016817.P17112745404113167581

namespace A016817

/-- `A016818(n)/A016813(n)` -/
def P17112745404113167581.Spec : Prop :=
  ∀ n, P17112745404113167581.a n = (A016817 n : ℚ)

end A016817

/-! ## A016817.P14148130061331416273

`A016819(n)/A016814(n)`
-/

namespace A016817.P14148130061331416273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016819 n : ℚ) / (A016814 n : ℚ)

end

end A016817.P14148130061331416273

namespace A016817

/-- `A016819(n)/A016814(n)` -/
def P14148130061331416273.Spec : Prop :=
  ∀ n, P14148130061331416273.a n = (A016817 n : ℚ)

end A016817

/-! ## A016817.P9157392781894818937

`A016820(n)/A016815(n)`
-/

namespace A016817.P9157392781894818937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 n : ℚ) / (A016815 n : ℚ)

end

end A016817.P9157392781894818937

namespace A016817

/-- `A016820(n)/A016815(n)` -/
def P9157392781894818937.Spec : Prop :=
  ∀ n, P9157392781894818937.a n = (A016817 n : ℚ)

end A016817

/-! ## A016817.P12589037139195053931

`gcd(A016818(n), A017093(n))`
-/

namespace A016817.P12589037139195053931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016818 n) (A017093 n)

end

end A016817.P12589037139195053931

namespace A016817

/-- `gcd(A016818(n), A017093(n))` -/
def P12589037139195053931.Spec : Prop :=
  ∀ n, (P12589037139195053931.a n : ℤ) = A016817 n

end A016817

/-! ## A016817.P10405445215000793448

`∪[A017081(n), A017129(n)]`
-/

namespace A016817.P10405445215000793448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017129 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016817.P10405445215000793448

namespace A016817

/-- `∪[A017081(n), A017129(n)]` -/
def P10405445215000793448.Spec : Prop :=
  ∀ n, (P10405445215000793448.a n : ℤ) = A016817 n

end A016817

/-! ## A016817.P18116684397093888687

`A016813(n)²*A016815(n)`
-/

namespace A016817.P18116684397093888687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 * A016815 n

end

end A016817.P18116684397093888687

namespace A016817

/-- `A016813(n)²*A016815(n)` -/
def P18116684397093888687.Spec : Prop :=
  ∀ n, P18116684397093888687.a n = A016817 n

end A016817

/-! ## A016817.P9185007146423967460

`A016814(n)²*A016813(n)`
-/

namespace A016817.P9185007146423967460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n ^ 2 * A016813 n

end

end A016817.P9185007146423967460

namespace A016817

/-- `A016814(n)²*A016813(n)` -/
def P9185007146423967460.Spec : Prop :=
  ∀ n, P9185007146423967460.a n = A016817 n

end A016817

/-! ## A016817.P9338747576852163999

`A016819(n)/A016813(n)²`
-/

namespace A016817.P9338747576852163999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016819 n : ℚ) / (A016813 n ^ 2 : ℚ)

end

end A016817.P9338747576852163999

namespace A016817

/-- `A016819(n)/A016813(n)²` -/
def P9338747576852163999.Spec : Prop :=
  ∀ n, P9338747576852163999.a n = (A016817 n : ℚ)

end A016817

/-!
# A016818: a(n) = (4n+1)^6.

The programs for A016818, the canonical program `A016818.P990759581079900138` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016818 has offset 0).

The definition of A016818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^6` (program `A016818.P990759581079900138`, by `A016818.P990759581079900138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016818.P990759581079900138

`(4*n+1)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016818

/-- `(4*n+1)^6` -/
def P990759581079900138.Spec : Prop :=
  ∀ n, (P990759581079900138.a n : ℤ) = A016818 n

theorem P990759581079900138.correct : P990759581079900138.Spec := by
  intro n
  simp only [A016818]

end A016818

/-! ## A016818.P15229533061591564430

`(or(1, 4*n)^3)²`
-/

namespace A016818.P15229533061591564430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) ^ 3) ^ 2

end

end A016818.P15229533061591564430

namespace A016818

/-- `(or(1, 4*n)^3)²` -/
def P15229533061591564430.Spec : Prop :=
  ∀ n, (P15229533061591564430.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P8321136801603559433

`(xor(1, 4*n)^3)²`
-/

namespace A016818.P8321136801603559433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) ^ 3) ^ 2

end

end A016818.P8321136801603559433

namespace A016818

/-- `(xor(1, 4*n)^3)²` -/
def P8321136801603559433.Spec : Prop :=
  ∀ n, (P8321136801603559433.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P16118967440475088985

`record[(1-lcm(2, n))^6]`
-/

namespace A016818.P16118967440475088985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 2 n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016818.P16118967440475088985

namespace A016818

/-- `record[(1-lcm(2, n))^6]` -/
def P16118967440475088985.Spec : Prop :=
  ∀ n, P16118967440475088985.a n = A016818 n

end A016818

/-! ## A016818.P18300802393038793384

`record[xor(3, or(2, n))^6]`
-/

namespace A016818.P18300802393038793384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016818.P18300802393038793384

namespace A016818

/-- `record[xor(3, or(2, n))^6]` -/
def P18300802393038793384.Spec : Prop :=
  ∀ n, (P18300802393038793384.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P1173314892870305219

`(Δ[C(2*n, 2)]^3)²`
-/

namespace A016818.P1173314892870305219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3) ^ 2

end

end A016818.P1173314892870305219

namespace A016818

/-- `(Δ[C(2*n, 2)]^3)²` -/
def P1173314892870305219.Spec : Prop :=
  ∀ n, P1173314892870305219.a n = A016818 n

end A016818

/-! ## A016818.P2102353800641114354

`(eq[1, val(n+1, 2)]^3)²`
-/

namespace A016818.P2102353800641114354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016818.P2102353800641114354

namespace A016818

/-- `(eq[1, val(n+1, 2)]^3)²` -/
def P2102353800641114354.Spec : Prop :=
  ∀ n, (P2102353800641114354.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P13803287615938072112

`(lt[1, val(n+3, 2)]^3)²`
-/

namespace A016818.P13803287615938072112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016818.P13803287615938072112

namespace A016818

/-- `(lt[1, val(n+3, 2)]^3)²` -/
def P13803287615938072112.Spec : Prop :=
  ∀ n, (P13803287615938072112.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P16673612483050707798

`(lt[lcm(4, 1-n), n]^3)²`
-/

namespace A016818.P16673612483050707798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016818.P16673612483050707798

namespace A016818

/-- `(lt[lcm(4, 1-n), n]^3)²` -/
def P16673612483050707798.Spec : Prop :=
  ∀ n, (P16673612483050707798.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P11413473967759922990

`(eq[3, xor(n, n+1)]^3)²`
-/

namespace A016818.P11413473967759922990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016818.P11413473967759922990

namespace A016818

/-- `(eq[3, xor(n, n+1)]^3)²` -/
def P11413473967759922990.Spec : Prop :=
  ∀ n, (P11413473967759922990.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P7345548722371297609

`(lt[xor(3, n+2), n]^3)²`
-/

namespace A016818.P7345548722371297609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016818.P7345548722371297609

namespace A016818

/-- `(lt[xor(3, n+2), n]^3)²` -/
def P7345548722371297609.Spec : Prop :=
  ∀ n, (P7345548722371297609.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P3025511059302250960

`(lt[n, xor(3, n-1)]^3)²`
-/

namespace A016818.P3025511059302250960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3) ^ 2

end

end A016818.P3025511059302250960

namespace A016818

/-- `(lt[n, xor(3, n-1)]^3)²` -/
def P3025511059302250960.Spec : Prop :=
  ∀ n, (P3025511059302250960.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P10446892141960064652

`(eq[n-1, and(n, n+1)]^3)²`
-/

namespace A016818.P10446892141960064652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n ^ 3) ^ 2

end

end A016818.P10446892141960064652

namespace A016818

/-- `(eq[n-1, and(n, n+1)]^3)²` -/
def P10446892141960064652.Spec : Prop :=
  ∀ n, (P10446892141960064652.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P2492284049674124007

`(eq[n+2, or(n, n+1)]^3)²`
-/

namespace A016818.P2492284049674124007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016818.P2492284049674124007

namespace A016818

/-- `(eq[n+2, or(n, n+1)]^3)²` -/
def P2492284049674124007.Spec : Prop :=
  ∀ n, (P2492284049674124007.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P3361249692960321858

`(lt[and(n+2, n+3), n]^3)²`
-/

namespace A016818.P3361249692960321858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016818.P3361249692960321858

namespace A016818

/-- `(lt[and(n+2, n+3), n]^3)²` -/
def P3361249692960321858.Spec : Prop :=
  ∀ n, (P3361249692960321858.a n : ℤ) = A016818 n

end A016818

/-! ## A016818.P5887102938942322931

`A016815(n)²`
-/

namespace A016818.P5887102938942322931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n ^ 2

end

end A016818.P5887102938942322931

namespace A016818

/-- `A016815(n)²` -/
def P5887102938942322931.Spec : Prop :=
  ∀ n, P5887102938942322931.a n = A016818 n

end A016818

/-! ## A016818.P14119820941873743125

`sqrt(A016824(n))`
-/

namespace A016818.P14119820941873743125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016824 n : ℝ)

end

end A016818.P14119820941873743125

namespace A016818

/-- `sqrt(A016824(n))` -/
def P14119820941873743125.Spec : Prop :=
  ∀ n, P14119820941873743125.a n = (A016818 n : ℝ)

end A016818

/-! ## A016818.P12520422548776224710

`(A016813(n)^3)²`
-/

namespace A016818.P12520422548776224710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016813 n ^ 3) ^ 2

end

end A016818.P12520422548776224710

namespace A016818

/-- `(A016813(n)^3)²` -/
def P12520422548776224710.Spec : Prop :=
  ∀ n, P12520422548776224710.a n = A016818 n

end A016818

/-! ## A016818.P9350293618337164366

`sqrt(A016816(n)^3)`
-/

namespace A016818.P9350293618337164366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016816 n ^ 3 : ℝ)

end

end A016818.P9350293618337164366

namespace A016818

/-- `sqrt(A016816(n)^3)` -/
def P9350293618337164366.Spec : Prop :=
  ∀ n, P9350293618337164366.a n = (A016818 n : ℝ)

end A016818

/-! ## A016818.P7478753972377307797

`(Δ[A000384(n)]^3)²`
-/

namespace A016818.P7478753972377307797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016818.P7478753972377307797

namespace A016818

/-- `(Δ[A000384(n)]^3)²` -/
def P7478753972377307797.Spec : Prop :=
  ∀ n, P7478753972377307797.a n = A016818 n

end A016818

/-!
# A016819: a(n) = (4n+1)^7.

The programs for A016819, the canonical program `A016819.P8718668467099107420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016819 has offset 0).

The definition of A016819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^7` (program `A016819.P8718668467099107420`, by `A016819.P8718668467099107420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016819.P8718668467099107420

`(4*n+1)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016819

/-- `(4*n+1)^7` -/
def P8718668467099107420.Spec : Prop :=
  ∀ n, (P8718668467099107420.a n : ℤ) = A016819 n

theorem P8718668467099107420.correct : P8718668467099107420.Spec := by
  intro n
  simp only [A016819]

end A016819

/-! ## A016819.P3414752418369196853

`record[(xor(3, n)-2)^7]`
-/

namespace A016819.P3414752418369196853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016819.P3414752418369196853

namespace A016819

/-- `record[(xor(3, n)-2)^7]` -/
def P3414752418369196853.Spec : Prop :=
  ∀ n, P3414752418369196853.a n = A016819 n

end A016819

/-! ## A016819.P1217704223529647346

`record[xor(3, or(2, n))^7]`
-/

namespace A016819.P1217704223529647346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016819.P1217704223529647346

namespace A016819

/-- `record[xor(3, or(2, n))^7]` -/
def P1217704223529647346.Spec : Prop :=
  ∀ n, (P1217704223529647346.a n : ℤ) = A016819 n

end A016819

/-! ## A016819.P5241296761700693224

`or(1, or(1, 4*n)^7)`
-/

namespace A016819.P5241296761700693224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (4 * n) ^ 7)

end

end A016819.P5241296761700693224

namespace A016819

/-- `or(1, or(1, 4*n)^7)` -/
def P5241296761700693224.Spec : Prop :=
  ∀ n, (P5241296761700693224.a n : ℤ) = A016819 n

end A016819

/-! ## A016819.P131913891719619497

`A016820(n)/(4*n+1)`
-/

namespace A016819.P131913891719619497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 n : ℚ) / (4 * n + 1 : ℚ)

end

end A016819.P131913891719619497

namespace A016819

/-- `A016820(n)/(4*n+1)` -/
def P131913891719619497.Spec : Prop :=
  ∀ n, P131913891719619497.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P6781460852428338159

`A016813(n)*A016818(n)`
-/

namespace A016819.P6781460852428338159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016818 n

end

end A016819.P6781460852428338159

namespace A016819

/-- `A016813(n)*A016818(n)` -/
def P6781460852428338159.Spec : Prop :=
  ∀ n, P6781460852428338159.a n = A016819 n

end A016819

/-! ## A016819.P16192734506855720524

`A016814(n)*A016817(n)`
-/

namespace A016819.P16192734506855720524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n * A016817 n

end

end A016819.P16192734506855720524

namespace A016819

/-- `A016814(n)*A016817(n)` -/
def P16192734506855720524.Spec : Prop :=
  ∀ n, P16192734506855720524.a n = A016819 n

end A016819

/-! ## A016819.P15263753916875598758

`A016815(n)*A016816(n)`
-/

namespace A016819.P15263753916875598758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n * A016816 n

end

end A016819.P15263753916875598758

namespace A016819

/-- `A016815(n)*A016816(n)` -/
def P15263753916875598758.Spec : Prop :=
  ∀ n, P15263753916875598758.a n = A016819 n

end A016819

/-! ## A016819.P5528881567156238255

`A016813(n)²*A016817(n)`
-/

namespace A016819.P5528881567156238255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 * A016817 n

end

end A016819.P5528881567156238255

namespace A016819

/-- `A016813(n)²*A016817(n)` -/
def P5528881567156238255.Spec : Prop :=
  ∀ n, P5528881567156238255.a n = A016819 n

end A016819

/-! ## A016819.P17494976995910622550

`A016814(n)²*A016815(n)`
-/

namespace A016819.P17494976995910622550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n ^ 2 * A016815 n

end

end A016819.P17494976995910622550

namespace A016819

/-- `A016814(n)²*A016815(n)` -/
def P17494976995910622550.Spec : Prop :=
  ∀ n, P17494976995910622550.a n = A016819 n

end A016819

/-! ## A016819.P17656651961977135612

`A016815(n)²*A016813(n)`
-/

namespace A016819.P17656651961977135612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n ^ 2 * A016813 n

end

end A016819.P17656651961977135612

namespace A016819

/-- `A016815(n)²*A016813(n)` -/
def P17656651961977135612.Spec : Prop :=
  ∀ n, P17656651961977135612.a n = A016819 n

end A016819

/-! ## A016819.P1662890182947686461

`A016816(n)²/A016813(n)`
-/

namespace A016819.P1662890182947686461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 n ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A016819.P1662890182947686461

namespace A016819

/-- `A016816(n)²/A016813(n)` -/
def P1662890182947686461.Spec : Prop :=
  ∀ n, P1662890182947686461.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P3792812335009413031

`A016818(n)²/A016817(n)`
-/

namespace A016819.P3792812335009413031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016818 n ^ 2 : ℚ) / (A016817 n : ℚ)

end

end A016819.P3792812335009413031

namespace A016819

/-- `A016818(n)²/A016817(n)` -/
def P3792812335009413031.Spec : Prop :=
  ∀ n, P3792812335009413031.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P2772438942499320347

`A016821(n)/A016813(n)²`
-/

namespace A016819.P2772438942499320347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016821 n : ℚ) / (A016813 n ^ 2 : ℚ)

end

end A016819.P2772438942499320347

namespace A016819

/-- `A016821(n)/A016813(n)²` -/
def P2772438942499320347.Spec : Prop :=
  ∀ n, P2772438942499320347.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P15152356481786264353

`1/A016813(n)*A016820(n)`
-/

namespace A016819.P15152356481786264353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016813 n : ℚ) * (A016820 n : ℚ)

end

end A016819.P15152356481786264353

namespace A016819

/-- `1/A016813(n)*A016820(n)` -/
def P15152356481786264353.Spec : Prop :=
  ∀ n, P15152356481786264353.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P13924475830651619305

`A016814(n)²²/A016813(n)`
-/

namespace A016819.P13924475830651619305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016814 n ^ 2) ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A016819.P13924475830651619305

namespace A016819

/-- `A016814(n)²²/A016813(n)` -/
def P13924475830651619305.Spec : Prop :=
  ∀ n, P13924475830651619305.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P1485709834376632004

`A016823(n)/A016813(n)²²`
-/

namespace A016819.P1485709834376632004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 n : ℚ) / ((A016813 n ^ 2) ^ 2 : ℚ)

end

end A016819.P1485709834376632004

namespace A016819

/-- `A016823(n)/A016813(n)²²` -/
def P1485709834376632004.Spec : Prop :=
  ∀ n, P1485709834376632004.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P10260949073032761383

`A016816(n)/A016817(n)*A016816(n)²`
-/

namespace A016819.P10260949073032761383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 n : ℚ) / (A016817 n : ℚ) * (A016816 n ^ 2 : ℚ)

end

end A016819.P10260949073032761383

namespace A016819

/-- `A016816(n)/A016817(n)*A016816(n)²` -/
def P10260949073032761383.Spec : Prop :=
  ∀ n, P10260949073032761383.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P3287290040720271382

`A016817(n)/A016820(n)*A016817(n)²`
-/

namespace A016819.P3287290040720271382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016817 n : ℚ) / (A016820 n : ℚ) * (A016817 n ^ 2 : ℚ)

end

end A016819.P3287290040720271382

namespace A016819

/-- `A016817(n)/A016820(n)*A016817(n)²` -/
def P3287290040720271382.Spec : Prop :=
  ∀ n, P3287290040720271382.a n = (A016819 n : ℚ)

end A016819

/-! ## A016819.P5829697203127258298

`A016759(2*n)`
-/

namespace A016819.P5829697203127258298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 (2 * n)

end

end A016819.P5829697203127258298

namespace A016819

/-- `A016759(2*n)` -/
def P5829697203127258298.Spec : Prop :=
  ∀ n, P5829697203127258298.a n = A016819 n

end A016819

/-!
# A016820: a(n) = (4*n + 1)^8.

The programs for A016820, the canonical program `A016820.P15491023708518114857` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016820 has offset 0).

The definition of A016820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^8` (program `A016820.P15491023708518114857`, by `A016820.P15491023708518114857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016820.P15491023708518114857

`(4*n+1)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016820

/-- `(4*n+1)^8` -/
def P15491023708518114857.Spec : Prop :=
  ∀ n, (P15491023708518114857.a n : ℤ) = A016820 n

theorem P15491023708518114857.correct : P15491023708518114857.Spec := by
  intro n
  simp only [A016820]

end A016820

/-! ## A016820.P14038630853631488331

`A001016(A016813(n))`
-/

namespace A016820.P14038630853631488331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A016813 n).toNat

end

end A016820.P14038630853631488331

namespace A016820

/-- `A001016(A016813(n))` -/
def P14038630853631488331.Spec : Prop :=
  ∀ n, P14038630853631488331.a n = A016820 n

end A016820

/-! ## A016820.P8441556012396940064

`(or(1, 4*n)^4)²`
-/

namespace A016820.P8441556012396940064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) ^ 4) ^ 2

end

end A016820.P8441556012396940064

namespace A016820

/-- `(or(1, 4*n)^4)²` -/
def P8441556012396940064.Spec : Prop :=
  ∀ n, (P8441556012396940064.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P13330448709542042776

`(xor(1, 4*n)^4)²`
-/

namespace A016820.P13330448709542042776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) ^ 4) ^ 2

end

end A016820.P13330448709542042776

namespace A016820

/-- `(xor(1, 4*n)^4)²` -/
def P13330448709542042776.Spec : Prop :=
  ∀ n, (P13330448709542042776.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P13771608660709497622

`or(1, 4*n)²²²`
-/

namespace A016820.P13771608660709497622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016820.P13771608660709497622

namespace A016820

/-- `or(1, 4*n)²²²` -/
def P13771608660709497622.Spec : Prop :=
  ∀ n, (P13771608660709497622.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P17233691748617757449

`xor(1, 4*n)²²²`
-/

namespace A016820.P17233691748617757449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016820.P17233691748617757449

namespace A016820

/-- `xor(1, 4*n)²²²` -/
def P17233691748617757449.Spec : Prop :=
  ∀ n, (P17233691748617757449.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P16707506834612598938

`(Δ[C(2*n, 2)]^4)²`
-/

namespace A016820.P16707506834612598938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A016820.P16707506834612598938

namespace A016820

/-- `(Δ[C(2*n, 2)]^4)²` -/
def P16707506834612598938.Spec : Prop :=
  ∀ n, P16707506834612598938.a n = A016820 n

end A016820

/-! ## A016820.P4976432199771721740

`Δ[C(2*n, 2)]²²²`
-/

namespace A016820.P4976432199771721740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016820.P4976432199771721740

namespace A016820

/-- `Δ[C(2*n, 2)]²²²` -/
def P4976432199771721740.Spec : Prop :=
  ∀ n, P4976432199771721740.a n = A016820 n

end A016820

/-! ## A016820.P8406209931396806976

`(eq[1, val(n+1, 2)]^4)²`
-/

namespace A016820.P8406209931396806976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4) ^ 2

end

end A016820.P8406209931396806976

namespace A016820

/-- `(eq[1, val(n+1, 2)]^4)²` -/
def P8406209931396806976.Spec : Prop :=
  ∀ n, (P8406209931396806976.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P9228837564800119829

`(lt[1, val(n+3, 2)]^4)²`
-/

namespace A016820.P9228837564800119829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016820.P9228837564800119829

namespace A016820

/-- `(lt[1, val(n+3, 2)]^4)²` -/
def P9228837564800119829.Spec : Prop :=
  ∀ n, (P9228837564800119829.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P2210297252699398605

`eq[1, val(n+1, 2)]²²²`
-/

namespace A016820.P2210297252699398605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2) ^ 2

end

end A016820.P2210297252699398605

namespace A016820

/-- `eq[1, val(n+1, 2)]²²²` -/
def P2210297252699398605.Spec : Prop :=
  ∀ n, (P2210297252699398605.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P13661565840479861701

`(lt[lcm(4, 1-n), n]^4)²`
-/

namespace A016820.P13661565840479861701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016820.P13661565840479861701

namespace A016820

/-- `(lt[lcm(4, 1-n), n]^4)²` -/
def P13661565840479861701.Spec : Prop :=
  ∀ n, (P13661565840479861701.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P14489420829814957543

`lt[1, val(n+3, 2)]²²²`
-/

namespace A016820.P14489420829814957543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016820.P14489420829814957543

namespace A016820

/-- `lt[1, val(n+3, 2)]²²²` -/
def P14489420829814957543.Spec : Prop :=
  ∀ n, (P14489420829814957543.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P8515629022540529545

`(eq[3, xor(n, n+1)]^4)²`
-/

namespace A016820.P8515629022540529545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4) ^ 2

end

end A016820.P8515629022540529545

namespace A016820

/-- `(eq[3, xor(n, n+1)]^4)²` -/
def P8515629022540529545.Spec : Prop :=
  ∀ n, (P8515629022540529545.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P10634451863717435713

`(lt[xor(3, n+2), n]^4)²`
-/

namespace A016820.P10634451863717435713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016820.P10634451863717435713

namespace A016820

/-- `(lt[xor(3, n+2), n]^4)²` -/
def P10634451863717435713.Spec : Prop :=
  ∀ n, (P10634451863717435713.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P12704835669992833247

`(lt[n, xor(3, n-1)]^4)²`
-/

namespace A016820.P12704835669992833247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 4) ^ 2

end

end A016820.P12704835669992833247

namespace A016820

/-- `(lt[n, xor(3, n-1)]^4)²` -/
def P12704835669992833247.Spec : Prop :=
  ∀ n, (P12704835669992833247.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P12733905745448112816

`record[(n^and(4, (n+1)²))²]`
-/

namespace A016820.P12733905745448112816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 4 ((n + 1) ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016820.P12733905745448112816

namespace A016820

/-- `record[(n^and(4, (n+1)²))²]` -/
def P12733905745448112816.Spec : Prop :=
  ∀ n, (P12733905745448112816.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P2730813044422738250

`record[(1-n)²^and(4, n²)]`
-/

namespace A016820.P2730813044422738250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ Nat.land 4 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016820.P2730813044422738250

namespace A016820

/-- `record[(1-n)²^and(4, n²)]` -/
def P2730813044422738250.Spec : Prop :=
  ∀ n, P2730813044422738250.a n = A016820 n

end A016820

/-! ## A016820.P8496292454677995501

`eq[3, xor(n, n+1)]²²²`
-/

namespace A016820.P8496292454677995501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2) ^ 2

end

end A016820.P8496292454677995501

namespace A016820

/-- `eq[3, xor(n, n+1)]²²²` -/
def P8496292454677995501.Spec : Prop :=
  ∀ n, (P8496292454677995501.a n : ℤ) = A016820 n

end A016820

/-! ## A016820.P12270376335043472152

`lt[xor(3, n+2), n]²²²`
-/

namespace A016820.P12270376335043472152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016820.P12270376335043472152

namespace A016820

/-- `lt[xor(3, n+2), n]²²²` -/
def P12270376335043472152.Spec : Prop :=
  ∀ n, (P12270376335043472152.a n : ℤ) = A016820 n

end A016820

/-!
# A016821: a(n) = (4n+1)^9.

The programs for A016821, the canonical program `A016821.P17020598727398080653` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016821 has offset 0).

The definition of A016821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^9` (program `A016821.P17020598727398080653`, by `A016821.P17020598727398080653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016821.P17020598727398080653

`(4*n+1)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016821

/-- `(4*n+1)^9` -/
def P17020598727398080653.Spec : Prop :=
  ∀ n, (P17020598727398080653.a n : ℤ) = A016821 n

theorem P17020598727398080653.correct : P17020598727398080653.Spec := by
  intro n
  simp only [A016821]

end A016821

/-! ## A016821.P8582317711845590245

`(4*n+1)*A016820(n)`
-/

namespace A016821.P8582317711845590245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A016820 n

end

end A016821.P8582317711845590245

namespace A016821

/-- `(4*n+1)*A016820(n)` -/
def P8582317711845590245.Spec : Prop :=
  ∀ n, P8582317711845590245.a n = A016821 n

end A016821

/-! ## A016821.P8876504941620045689

`A016814(n)*A016819(n)`
-/

namespace A016821.P8876504941620045689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n * A016819 n

end

end A016821.P8876504941620045689

namespace A016821

/-- `A016814(n)*A016819(n)` -/
def P8876504941620045689.Spec : Prop :=
  ∀ n, P8876504941620045689.a n = A016821 n

end A016821

/-! ## A016821.P14314371864542093901

`A016815(n)*A016818(n)`
-/

namespace A016821.P14314371864542093901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n * A016818 n

end

end A016821.P14314371864542093901

namespace A016821

/-- `A016815(n)*A016818(n)` -/
def P14314371864542093901.Spec : Prop :=
  ∀ n, P14314371864542093901.a n = A016821 n

end A016821

/-! ## A016821.P11849366237562850661

`A016816(n)*A016817(n)`
-/

namespace A016821.P11849366237562850661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 n * A016817 n

end

end A016821.P11849366237562850661

namespace A016821

/-- `A016816(n)*A016817(n)` -/
def P11849366237562850661.Spec : Prop :=
  ∀ n, P11849366237562850661.a n = A016821 n

end A016821

/-! ## A016821.P7485932516519812241

`A016822(n)/A016813(n)`
-/

namespace A016821.P7485932516519812241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016822 n : ℚ) / (A016813 n : ℚ)

end

end A016821.P7485932516519812241

namespace A016821

/-- `A016822(n)/A016813(n)` -/
def P7485932516519812241.Spec : Prop :=
  ∀ n, P7485932516519812241.a n = (A016821 n : ℚ)

end A016821

/-! ## A016821.P416172814161355714

`A016813(n)²*A016819(n)`
-/

namespace A016821.P416172814161355714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 * A016819 n

end

end A016821.P416172814161355714

namespace A016821

/-- `A016813(n)²*A016819(n)` -/
def P416172814161355714.Spec : Prop :=
  ∀ n, P416172814161355714.a n = A016821 n

end A016821

/-! ## A016821.P6265965931291437426

`A016814(n)²*A016817(n)`
-/

namespace A016821.P6265965931291437426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n ^ 2 * A016817 n

end

end A016821.P6265965931291437426

namespace A016821

/-- `A016814(n)²*A016817(n)` -/
def P6265965931291437426.Spec : Prop :=
  ∀ n, P6265965931291437426.a n = A016821 n

end A016821

/-! ## A016821.P3965943081852560610

`A016816(n)²*A016813(n)`
-/

namespace A016821.P3965943081852560610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 n ^ 2 * A016813 n

end

end A016821.P3965943081852560610

namespace A016821

/-- `A016816(n)²*A016813(n)` -/
def P3965943081852560610.Spec : Prop :=
  ∀ n, P3965943081852560610.a n = A016821 n

end A016821

/-! ## A016821.P5466153272819441425

`A016817(n)²/A016813(n)`
-/

namespace A016821.P5466153272819441425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016817 n ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A016821.P5466153272819441425

namespace A016821

/-- `A016817(n)²/A016813(n)` -/
def P5466153272819441425.Spec : Prop :=
  ∀ n, P5466153272819441425.a n = (A016821 n : ℚ)

end A016821

/-! ## A016821.P2672561766002302870

`A016823(n)/A016813(n)²`
-/

namespace A016821.P2672561766002302870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 n : ℚ) / (A016813 n ^ 2 : ℚ)

end

end A016821.P2672561766002302870

namespace A016821

/-- `A016823(n)/A016813(n)²` -/
def P2672561766002302870.Spec : Prop :=
  ∀ n, P2672561766002302870.a n = (A016821 n : ℚ)

end A016821

/-! ## A016821.P17341190124869499662

`A016814(n)²²*A016813(n)`
-/

namespace A016821.P17341190124869499662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016814 n ^ 2) ^ 2 * A016813 n

end

end A016821.P17341190124869499662

namespace A016821

/-- `A016814(n)²²*A016813(n)` -/
def P17341190124869499662.Spec : Prop :=
  ∀ n, P17341190124869499662.a n = A016821 n

end A016821

/-! ## A016821.P13517181561381504097

`A016814(n)*A016820(n)/A016813(n)`
-/

namespace A016821.P13517181561381504097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016814 n * A016820 n : ℚ) / (A016813 n : ℚ)

end

end A016821.P13517181561381504097

namespace A016821

/-- `A016814(n)*A016820(n)/A016813(n)` -/
def P13517181561381504097.Spec : Prop :=
  ∀ n, P13517181561381504097.a n = (A016821 n : ℚ)

end A016821

/-! ## A016821.P6097507945314984981

`A016813(n)*A016818(n)*A016813(n)²`
-/

namespace A016821.P6097507945314984981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016818 n * A016813 n ^ 2

end

end A016821.P6097507945314984981

namespace A016821

/-- `A016813(n)*A016818(n)*A016813(n)²` -/
def P6097507945314984981.Spec : Prop :=
  ∀ n, P6097507945314984981.a n = A016821 n

end A016821

/-! ## A016821.P15219845311449698022

`A016817(n)/A016818(n)*A016817(n)²`
-/

namespace A016821.P15219845311449698022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016817 n : ℚ) / (A016818 n : ℚ) * (A016817 n ^ 2 : ℚ)

end

end A016821.P15219845311449698022

namespace A016821

/-- `A016817(n)/A016818(n)*A016817(n)²` -/
def P15219845311449698022.Spec : Prop :=
  ∀ n, P15219845311449698022.a n = (A016821 n : ℚ)

end A016821

/-! ## A016821.P17224883643584237417

`A016761(2*n)`
-/

namespace A016821.P17224883643584237417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (2 * n)

end

end A016821.P17224883643584237417

namespace A016821

/-- `A016761(2*n)` -/
def P17224883643584237417.Spec : Prop :=
  ∀ n, P17224883643584237417.a n = A016821 n

end A016821

/-! ## A016821.P8336457773565541849

`record[A086970(n)^9]`
-/

namespace A016821.P8336457773565541849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016821.P8336457773565541849

namespace A016821

/-- `record[A086970(n)^9]` -/
def P8336457773565541849.Spec : Prop :=
  ∀ n, P8336457773565541849.a n = A016821 n

end A016821

/-! ## A016821.P8842884698298631447

`A016755(2*n)²*A016755(2*n)`
-/

namespace A016821.P8842884698298631447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (2 * n) ^ 2 * A016755 (2 * n)

end

end A016821.P8842884698298631447

namespace A016821

/-- `A016755(2*n)²*A016755(2*n)` -/
def P8842884698298631447.Spec : Prop :=
  ∀ n, P8842884698298631447.a n = A016821 n

end A016821

/-! ## A016821.P6531476393486442202

`sqrt(A016758(2*n))*A016758(2*n)`
-/

namespace A016821.P6531476393486442202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016758 (2 * n) : ℝ) * (A016758 (2 * n) : ℝ)

end

end A016821.P6531476393486442202

namespace A016821

/-- `sqrt(A016758(2*n))*A016758(2*n)` -/
def P6531476393486442202.Spec : Prop :=
  ∀ n, P6531476393486442202.a n = (A016821 n : ℝ)

end A016821

/-! ## A016821.P7744617214890272905

`A001017(3*n+n+1)`
-/

namespace A016821.P7744617214890272905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (3 * n + (n + 1))

end

end A016821.P7744617214890272905

namespace A016821

/-- `A001017(3*n+n+1)` -/
def P7744617214890272905.Spec : Prop :=
  ∀ n, P7744617214890272905.a n = A016821 n

end A016821

/-!
# A016822: a(n) = (4n+1)^10.

The programs for A016822, the canonical program `A016822.P5486575791904332238` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016822 has offset 0).

The definition of A016822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^10` (program `A016822.P5486575791904332238`, by `A016822.P5486575791904332238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016822.P5486575791904332238

`(4*n+1)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016822

/-- `(4*n+1)^10` -/
def P5486575791904332238.Spec : Prop :=
  ∀ n, (P5486575791904332238.a n : ℤ) = A016822 n

theorem P5486575791904332238.correct : P5486575791904332238.Spec := by
  intro n
  simp only [A016822]

end A016822

/-! ## A016822.P12734558821728455565

`A008454(A016813(n))`
-/

namespace A016822.P12734558821728455565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 n).toNat

end

end A016822.P12734558821728455565

namespace A016822

/-- `A008454(A016813(n))` -/
def P12734558821728455565.Spec : Prop :=
  ∀ n, P12734558821728455565.a n = A016822 n

end A016822

/-! ## A016822.P12884624099095403157

`(or(1, 4*n)^5)²`
-/

namespace A016822.P12884624099095403157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) ^ 5) ^ 2

end

end A016822.P12884624099095403157

namespace A016822

/-- `(or(1, 4*n)^5)²` -/
def P12884624099095403157.Spec : Prop :=
  ∀ n, (P12884624099095403157.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P10416710766472427510

`(xor(1, 4*n)^5)²`
-/

namespace A016822.P10416710766472427510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) ^ 5) ^ 2

end

end A016822.P10416710766472427510

namespace A016822

/-- `(xor(1, 4*n)^5)²` -/
def P10416710766472427510.Spec : Prop :=
  ∀ n, (P10416710766472427510.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P5294553529269206987

`(Δ[C(2*n, 2)]^5)²`
-/

namespace A016822.P5294553529269206987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5) ^ 2

end

end A016822.P5294553529269206987

namespace A016822

/-- `(Δ[C(2*n, 2)]^5)²` -/
def P5294553529269206987.Spec : Prop :=
  ∀ n, P5294553529269206987.a n = A016822 n

end A016822

/-! ## A016822.P17218911971847989937

`(eq[1, val(n+1, 2)]^5)²`
-/

namespace A016822.P17218911971847989937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016822.P17218911971847989937

namespace A016822

/-- `(eq[1, val(n+1, 2)]^5)²` -/
def P17218911971847989937.Spec : Prop :=
  ∀ n, (P17218911971847989937.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P5533590729756809646

`(lt[1, val(n+3, 2)]^5)²`
-/

namespace A016822.P5533590729756809646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016822.P5533590729756809646

namespace A016822

/-- `(lt[1, val(n+3, 2)]^5)²` -/
def P5533590729756809646.Spec : Prop :=
  ∀ n, (P5533590729756809646.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P10568024720317143039

`(lt[lcm(4, 1-n), n]^5)²`
-/

namespace A016822.P10568024720317143039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016822.P10568024720317143039

namespace A016822

/-- `(lt[lcm(4, 1-n), n]^5)²` -/
def P10568024720317143039.Spec : Prop :=
  ∀ n, (P10568024720317143039.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P14844087519167134084

`(eq[3, xor(n, n+1)]^5)²`
-/

namespace A016822.P14844087519167134084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016822.P14844087519167134084

namespace A016822

/-- `(eq[3, xor(n, n+1)]^5)²` -/
def P14844087519167134084.Spec : Prop :=
  ∀ n, (P14844087519167134084.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P14034852906413391999

`(lt[xor(3, n+2), n]^5)²`
-/

namespace A016822.P14034852906413391999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016822.P14034852906413391999

namespace A016822

/-- `(lt[xor(3, n+2), n]^5)²` -/
def P14034852906413391999.Spec : Prop :=
  ∀ n, (P14034852906413391999.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P2653311278871495964

`(lt[n, xor(3, n-1)]^5)²`
-/

namespace A016822.P2653311278871495964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 5) ^ 2

end

end A016822.P2653311278871495964

namespace A016822

/-- `(lt[n, xor(3, n-1)]^5)²` -/
def P2653311278871495964.Spec : Prop :=
  ∀ n, (P2653311278871495964.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P1189859215263177155

`(eq[n-1, and(n, n+1)]^5)²`
-/

namespace A016822.P1189859215263177155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n ^ 5) ^ 2

end

end A016822.P1189859215263177155

namespace A016822

/-- `(eq[n-1, and(n, n+1)]^5)²` -/
def P1189859215263177155.Spec : Prop :=
  ∀ n, (P1189859215263177155.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P17949781580974508395

`(eq[n+2, or(n, n+1)]^5)²`
-/

namespace A016822.P17949781580974508395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016822.P17949781580974508395

namespace A016822

/-- `(eq[n+2, or(n, n+1)]^5)²` -/
def P17949781580974508395.Spec : Prop :=
  ∀ n, (P17949781580974508395.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P11339124411120404496

`(lt[and(n+2, n+3), n]^5)²`
-/

namespace A016822.P11339124411120404496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016822.P11339124411120404496

namespace A016822

/-- `(lt[and(n+2, n+3), n]^5)²` -/
def P11339124411120404496.Spec : Prop :=
  ∀ n, (P11339124411120404496.a n : ℤ) = A016822 n

end A016822

/-! ## A016822.P7803580301524979133

`Δ[C(2*n, 2)]^9*Δ[C(2*n, 2)]`
-/

namespace A016822.P7803580301524979133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 9 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A016822.P7803580301524979133

namespace A016822

/-- `Δ[C(2*n, 2)]^9*Δ[C(2*n, 2)]` -/
def P7803580301524979133.Spec : Prop :=
  ∀ n, P7803580301524979133.a n = A016822 n

end A016822

/-! ## A016822.P13367118258032456020

`A016817(n)²`
-/

namespace A016822.P13367118258032456020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n ^ 2

end

end A016822.P13367118258032456020

namespace A016822

/-- `A016817(n)²` -/
def P13367118258032456020.Spec : Prop :=
  ∀ n, P13367118258032456020.a n = A016822 n

end A016822

/-! ## A016822.P14448858152845831245

`((A016825(n)-1)^5)²`
-/

namespace A016822.P14448858152845831245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 n - 1) ^ 5) ^ 2

end

end A016822.P14448858152845831245

namespace A016822

/-- `((A016825(n)-1)^5)²` -/
def P14448858152845831245.Spec : Prop :=
  ∀ n, P14448858152845831245.a n = A016822 n

end A016822

/-! ## A016822.P18270236651434521904

`A016813(n)*A016821(n)`
-/

namespace A016822.P18270236651434521904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016821 n

end

end A016822.P18270236651434521904

namespace A016822

/-- `A016813(n)*A016821(n)` -/
def P18270236651434521904.Spec : Prop :=
  ∀ n, P18270236651434521904.a n = A016822 n

end A016822

/-! ## A016822.P16279493728490079741

`A016814(n)*A016820(n)`
-/

namespace A016822.P16279493728490079741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n * A016820 n

end

end A016822.P16279493728490079741

namespace A016822

/-- `A016814(n)*A016820(n)` -/
def P16279493728490079741.Spec : Prop :=
  ∀ n, P16279493728490079741.a n = A016822 n

end A016822

/-! ## A016822.P15257867399667326189

`A016815(n)*A016819(n)`
-/

namespace A016822.P15257867399667326189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n * A016819 n

end

end A016822.P15257867399667326189

namespace A016822

/-- `A016815(n)*A016819(n)` -/
def P15257867399667326189.Spec : Prop :=
  ∀ n, P15257867399667326189.a n = A016822 n

end A016822

/-!
# A016823: a(n) = (4n+1)^11.

The programs for A016823, the canonical program `A016823.P8133131490654501830` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016823 has offset 0).

The definition of A016823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^11` (program `A016823.P8133131490654501830`, by `A016823.P8133131490654501830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016823.P8133131490654501830

`(4*n+1)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016823

/-- `(4*n+1)^11` -/
def P8133131490654501830.Spec : Prop :=
  ∀ n, (P8133131490654501830.a n : ℤ) = A016823 n

theorem P8133131490654501830.correct : P8133131490654501830.Spec := by
  intro n
  simp only [A016823]

end A016823

/-! ## A016823.P13900699057381041695

`(4*n+1)*A016817(n)²`
-/

namespace A016823.P13900699057381041695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A016817 n ^ 2

end

end A016823.P13900699057381041695

namespace A016823

/-- `(4*n+1)*A016817(n)²` -/
def P13900699057381041695.Spec : Prop :=
  ∀ n, P13900699057381041695.a n = A016823 n

end A016823

/-! ## A016823.P3264820852104327941

`A016813(n)*A016822(n)`
-/

namespace A016823.P3264820852104327941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016822 n

end

end A016823.P3264820852104327941

namespace A016823

/-- `A016813(n)*A016822(n)` -/
def P3264820852104327941.Spec : Prop :=
  ∀ n, P3264820852104327941.a n = A016823 n

end A016823

/-! ## A016823.P5840714451239434128

`A016815(n)*A016820(n)`
-/

namespace A016823.P5840714451239434128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n * A016820 n

end

end A016823.P5840714451239434128

namespace A016823

/-- `A016815(n)*A016820(n)` -/
def P5840714451239434128.Spec : Prop :=
  ∀ n, P5840714451239434128.a n = A016823 n

end A016823

/-! ## A016823.P16542825132545647581

`A016816(n)*A016819(n)`
-/

namespace A016823.P16542825132545647581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 n * A016819 n

end

end A016823.P16542825132545647581

namespace A016823

/-- `A016816(n)*A016819(n)` -/
def P16542825132545647581.Spec : Prop :=
  ∀ n, P16542825132545647581.a n = A016823 n

end A016823

/-! ## A016823.P4419259119975753328

`A016817(n)*A016818(n)`
-/

namespace A016823.P4419259119975753328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n * A016818 n

end

end A016823.P4419259119975753328

namespace A016823

/-- `A016817(n)*A016818(n)` -/
def P4419259119975753328.Spec : Prop :=
  ∀ n, P4419259119975753328.a n = A016823 n

end A016823

/-! ## A016823.P11018101973284110716

`A016813(n)²*A016821(n)`
-/

namespace A016823.P11018101973284110716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 * A016821 n

end

end A016823.P11018101973284110716

namespace A016823

/-- `A016813(n)²*A016821(n)` -/
def P11018101973284110716.Spec : Prop :=
  ∀ n, P11018101973284110716.a n = A016823 n

end A016823

/-! ## A016823.P17879710533118512121

`A016814(n)²*A016819(n)`
-/

namespace A016823.P17879710533118512121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n ^ 2 * A016819 n

end

end A016823.P17879710533118512121

namespace A016823

/-- `A016814(n)²*A016819(n)` -/
def P17879710533118512121.Spec : Prop :=
  ∀ n, P17879710533118512121.a n = A016823 n

end A016823

/-! ## A016823.P17527242990718838838

`A016816(n)²*A016815(n)`
-/

namespace A016823.P17527242990718838838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 n ^ 2 * A016815 n

end

end A016823.P17527242990718838838

namespace A016823

/-- `A016816(n)²*A016815(n)` -/
def P17527242990718838838.Spec : Prop :=
  ∀ n, P17527242990718838838.a n = A016823 n

end A016823

/-! ## A016823.P15439096666575001221

`A016817(n)²*A016813(n)`
-/

namespace A016823.P15439096666575001221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n ^ 2 * A016813 n

end

end A016823.P15439096666575001221

namespace A016823

/-- `A016817(n)²*A016813(n)` -/
def P15439096666575001221.Spec : Prop :=
  ∀ n, P15439096666575001221.a n = A016823 n

end A016823

/-! ## A016823.P16479836908611548974

`A016818(n)²/A016813(n)`
-/

namespace A016823.P16479836908611548974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016818 n ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A016823.P16479836908611548974

namespace A016823

/-- `A016818(n)²/A016813(n)` -/
def P16479836908611548974.Spec : Prop :=
  ∀ n, P16479836908611548974.a n = (A016823 n : ℚ)

end A016823

/-! ## A016823.P16761263697384609581

`A016813(n)²²*A016819(n)`
-/

namespace A016823.P16761263697384609581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016813 n ^ 2) ^ 2 * A016819 n

end

end A016823.P16761263697384609581

namespace A016823

/-- `A016813(n)²²*A016819(n)` -/
def P16761263697384609581.Spec : Prop :=
  ∀ n, P16761263697384609581.a n = A016823 n

end A016823

/-! ## A016823.P16160204048742306365

`A016814(n)²²*A016815(n)`
-/

namespace A016823.P16160204048742306365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016814 n ^ 2) ^ 2 * A016815 n

end

end A016823.P16160204048742306365

namespace A016823

/-- `A016814(n)²²*A016815(n)` -/
def P16160204048742306365.Spec : Prop :=
  ∀ n, P16160204048742306365.a n = A016823 n

end A016823

/-! ## A016823.P12001081821428742157

`A016815(n)²²/A016813(n)`
-/

namespace A016823.P12001081821428742157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016815 n ^ 2) ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A016823.P12001081821428742157

namespace A016823

/-- `A016815(n)²²/A016813(n)` -/
def P12001081821428742157.Spec : Prop :=
  ∀ n, P12001081821428742157.a n = (A016823 n : ℚ)

end A016823

/-! ## A016823.P16994558903685395936

`A016813(n)*A016814(n)*A016820(n)`
-/

namespace A016823.P16994558903685395936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016814 n * A016820 n

end

end A016823.P16994558903685395936

namespace A016823

/-- `A016813(n)*A016814(n)*A016820(n)` -/
def P16994558903685395936.Spec : Prop :=
  ∀ n, P16994558903685395936.a n = A016823 n

end A016823

/-! ## A016823.P1872742906896058885

`A016819(n)/A016815(n)*A016819(n)`
-/

namespace A016823.P1872742906896058885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016819 n : ℚ) / (A016815 n : ℚ) * (A016819 n : ℚ)

end

end A016823.P1872742906896058885

namespace A016823

/-- `A016819(n)/A016815(n)*A016819(n)` -/
def P1872742906896058885.Spec : Prop :=
  ∀ n, P1872742906896058885.a n = (A016823 n : ℚ)

end A016823

/-! ## A016823.P1113727089061723408

`A016820(n)/A016817(n)*A016820(n)`
-/

namespace A016823.P1113727089061723408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 n : ℚ) / (A016817 n : ℚ) * (A016820 n : ℚ)

end

end A016823.P1113727089061723408

namespace A016823

/-- `A016820(n)/A016817(n)*A016820(n)` -/
def P1113727089061723408.Spec : Prop :=
  ∀ n, P1113727089061723408.a n = (A016823 n : ℚ)

end A016823

/-! ## A016823.P17233962602116027977

`gcd(A016818(n), A017093(n))*A016818(n)`
-/

namespace A016823.P17233962602116027977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A016818 n) (A017093 n) : ℤ) * A016818 n

end

end A016823.P17233962602116027977

namespace A016823

/-- `gcd(A016818(n), A017093(n))*A016818(n)` -/
def P17233962602116027977.Spec : Prop :=
  ∀ n, P17233962602116027977.a n = A016823 n

end A016823

/-! ## A016823.P9152532286367242410

`(A016813(n)*A016816(n))²*A016813(n)`
-/

namespace A016823.P9152532286367242410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016813 n * A016816 n) ^ 2 * A016813 n

end

end A016823.P9152532286367242410

namespace A016823

/-- `(A016813(n)*A016816(n))²*A016813(n)` -/
def P9152532286367242410.Spec : Prop :=
  ∀ n, P9152532286367242410.a n = A016823 n

end A016823

/-! ## A016823.P11289541393176559500

`A016763(2*n)`
-/

namespace A016823.P11289541393176559500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (2 * n)

end

end A016823.P11289541393176559500

namespace A016823

/-- `A016763(2*n)` -/
def P11289541393176559500.Spec : Prop :=
  ∀ n, P11289541393176559500.a n = A016823 n

end A016823

/-!
# A016824: a(n) = (4*n + 1)^12.

The programs for A016824, the canonical program `A016824.P981599693650977656` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016824 has offset 0).

The definition of A016824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)^12` (program `A016824.P981599693650977656`, by `A016824.P981599693650977656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016824.P981599693650977656

`(4*n+1)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016824

/-- `(4*n+1)^12` -/
def P981599693650977656.Spec : Prop :=
  ∀ n, (P981599693650977656.a n : ℤ) = A016824 n

theorem P981599693650977656.correct : P981599693650977656.Spec := by
  intro n
  simp only [A016824]

end A016824

/-! ## A016824.P14366678743530657071

`(Δ[C(2*n, 2)]^6)²`
-/

namespace A016824.P14366678743530657071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 6) ^ 2

end

end A016824.P14366678743530657071

namespace A016824

/-- `(Δ[C(2*n, 2)]^6)²` -/
def P14366678743530657071.Spec : Prop :=
  ∀ n, P14366678743530657071.a n = A016824 n

end A016824

/-! ## A016824.P7575983591720658125

`A016818(n)²`
-/

namespace A016824.P7575983591720658125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016818 n ^ 2

end

end A016824.P7575983591720658125

namespace A016824

/-- `A016818(n)²` -/
def P7575983591720658125.Spec : Prop :=
  ∀ n, P7575983591720658125.a n = A016824 n

end A016824

/-! ## A016824.P9399463007879747486

`A016816(n)*A016820(n)`
-/

namespace A016824.P9399463007879747486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 n * A016820 n

end

end A016824.P9399463007879747486

namespace A016824

/-- `A016816(n)*A016820(n)` -/
def P9399463007879747486.Spec : Prop :=
  ∀ n, P9399463007879747486.a n = A016824 n

end A016824

/-! ## A016824.P16136726806183073213

`A016817(n)*A016819(n)`
-/

namespace A016824.P16136726806183073213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n * A016819 n

end

end A016824.P16136726806183073213

namespace A016824

/-- `A016817(n)*A016819(n)` -/
def P16136726806183073213.Spec : Prop :=
  ∀ n, P16136726806183073213.a n = A016824 n

end A016824

/-! ## A016824.P11937239723780589556

`A016764(n+n)`
-/

namespace A016824.P11937239723780589556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (n + n)

end

end A016824.P11937239723780589556

namespace A016824

/-- `A016764(n+n)` -/
def P11937239723780589556.Spec : Prop :=
  ∀ n, P11937239723780589556.a n = A016824 n

end A016824

/-! ## A016824.P14774569001500893091

`A008456(2*n+2*n+1)`
-/

namespace A016824.P14774569001500893091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * n + (2 * n + 1))

end

end A016824.P14774569001500893091

namespace A016824

/-- `A008456(2*n+2*n+1)` -/
def P14774569001500893091.Spec : Prop :=
  ∀ n, P14774569001500893091.a n = A016824 n

end A016824

/-! ## A016824.P7197137685060055172

`record[A206772(n+1)^12]`
-/

namespace A016824.P7197137685060055172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206772 (n + 1) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016824.P7197137685060055172

namespace A016824

/-- `record[A206772(n+1)^12]` -/
def P7197137685060055172.Spec : Prop :=
  ∀ n, P7197137685060055172.a n = A016824 n

end A016824

/-!
# A016825: Positive integers congruent to 2 (mod 4): a(n) = 4*n+2, for n >= 0.

The programs for A016825, the canonical program `A016825.P4712696052905976233` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016825 has offset 0).

The definition of A016825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n+2` (program `A016825.P4712696052905976233`, by `A016825.P4712696052905976233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016825.P4712696052905976233

`4*n+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016825

/-- `4*n+2` -/
def P4712696052905976233.Spec : Prop :=
  ∀ n, (P4712696052905976233.a n : ℤ) = A016825 n

theorem P4712696052905976233.correct : P4712696052905976233.Spec := by
  intro n
  simp only [A016825]

end A016825

/-!
# A016826: a(n) = (4n + 2)^2.

The programs for A016826, the canonical program `A016826.P3235835473290805917` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016826 has offset 0).

The definition of A016826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)²` (program `A016826.P3235835473290805917`, by `A016826.P3235835473290805917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016826.P3235835473290805917

`(4*n+2)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016826

/-- `(4*n+2)²` -/
def P3235835473290805917.Spec : Prop :=
  ∀ n, (P3235835473290805917.a n : ℤ) = A016826 n

theorem P3235835473290805917.correct : P3235835473290805917.Spec := by
  intro n
  simp only [A016826]

end A016826

/-! ## A016826.P2359156540618520948

`a(n-1)+32*n` with `a(0)=4`
-/

namespace A016826.P2359156540618520948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 32 * n

end

end A016826.P2359156540618520948

namespace A016826

/-- `a(n-1)+32*n` -/
def P2359156540618520948.Spec : Prop :=
  ∀ n, (P2359156540618520948.a n : ℤ) = A016826 n

theorem P2359156540618520948.correct : P2359156540618520948.Spec := by
  intro n
  induction n with
  | zero => simp [A016826, A016826.P2359156540618520948.a, A016826.P3235835473290805917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016826, Nat.add_sub_cancel, A016826.P2359156540618520948.a, A016826.P3235835473290805917.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016826

/-! ## A016826.P13528675906611234282

`A000290(A016825(n))`
-/

namespace A016826.P13528675906611234282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016825 n).toNat

end

end A016826.P13528675906611234282

namespace A016826

/-- `A000290(A016825(n))` -/
def P13528675906611234282.Spec : Prop :=
  ∀ n, P13528675906611234282.a n = A016826 n

end A016826

/-! ## A016826.P1231429714024392034

`or(4, ∑[32*n])`
-/

namespace A016826.P1231429714024392034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016826.P1231429714024392034

namespace A016826

/-- `or(4, ∑[32*n])` -/
def P1231429714024392034.Spec : Prop :=
  ∀ n, (P1231429714024392034.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P7321728651594648489

`xor(4, ∑[32*n])`
-/

namespace A016826.P7321728651594648489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016826.P7321728651594648489

namespace A016826

/-- `xor(4, ∑[32*n])` -/
def P7321728651594648489.Spec : Prop :=
  ∀ n, (P7321728651594648489.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P9483573449036193498

`lcm(4, Δ[n²]²)`
-/

namespace A016826.P9483573449036193498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A016826.P9483573449036193498

namespace A016826

/-- `lcm(4, Δ[n²]²)` -/
def P9483573449036193498.Spec : Prop :=
  ∀ n, (P9483573449036193498.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P1070425065654593458

`record[lcm(2, n+1)²]`
-/

namespace A016826.P1070425065654593458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P1070425065654593458

namespace A016826

/-- `record[lcm(2, n+1)²]` -/
def P1070425065654593458.Spec : Prop :=
  ∀ n, (P1070425065654593458.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P5594257123504081090

`record[(1-xor(3, n))²]`
-/

namespace A016826.P5594257123504081090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 3 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P5594257123504081090

namespace A016826

/-- `record[(1-xor(3, n))²]` -/
def P5594257123504081090.Spec : Prop :=
  ∀ n, P5594257123504081090.a n = A016826 n

end A016826

/-! ## A016826.P20388163966929778

`record[(2*xor(1, n))²]`
-/

namespace A016826.P20388163966929778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P20388163966929778

namespace A016826

/-- `record[(2*xor(1, n))²]` -/
def P20388163966929778.Spec : Prop :=
  ∀ n, (P20388163966929778.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P17609198758958468404

`4*or(1, 2*n)²`
-/

namespace A016826.P17609198758958468404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (2 * n) ^ 2

end

end A016826.P17609198758958468404

namespace A016826

/-- `4*or(1, 2*n)²` -/
def P17609198758958468404.Spec : Prop :=
  ∀ n, (P17609198758958468404.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P9989288893699198167

`4*xor(1, 2*n)²`
-/

namespace A016826.P9989288893699198167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 (2 * n) ^ 2

end

end A016826.P9989288893699198167

namespace A016826

/-- `4*xor(1, 2*n)²` -/
def P9989288893699198167.Spec : Prop :=
  ∀ n, (P9989288893699198167.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P7157155189193450904

`record[(2*xor(1, n))^2]`
-/

namespace A016826.P7157155189193450904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P7157155189193450904

namespace A016826

/-- `record[(2*xor(1, n))^2]` -/
def P7157155189193450904.Spec : Prop :=
  ∀ n, (P7157155189193450904.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P10469441012708869995

`record[(xor(n, -4)+2)²]`
-/

namespace A016826.P10469441012708869995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-4) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P10469441012708869995

namespace A016826

/-- `record[(xor(n, -4)+2)²]` -/
def P10469441012708869995.Spec : Prop :=
  ∀ n, P10469441012708869995.a n = A016826 n

end A016826

/-! ## A016826.P8269580128779488133

`∑[a(n-1)+32]` with `a(0)=4, a(1)=32`
-/

namespace A016826.P8269580128779488133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 32] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016826.P8269580128779488133

namespace A016826

/-- `∑[a(n-1)+32]` -/
def P8269580128779488133.Spec : Prop :=
  ∀ n, (P8269580128779488133.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P3868662743324975536

`record[lcm(8, (1-n)²)/2]`
-/

namespace A016826.P3868662743324975536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 ((1 - (n : ℤ)) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P3868662743324975536

namespace A016826

/-- `record[lcm(8, (1-n)²)/2]` -/
def P3868662743324975536.Spec : Prop :=
  ∀ n, P3868662743324975536.a n = (A016826 n : ℚ)

end A016826

/-! ## A016826.P5027734432125061553

`record[(gcd(4, n+2)+n)²]`
-/

namespace A016826.P5027734432125061553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 2) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P5027734432125061553

namespace A016826

/-- `record[(gcd(4, n+2)+n)²]` -/
def P5027734432125061553.Spec : Prop :=
  ∀ n, (P5027734432125061553.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P16579149525302344476

`record[((n-1)*gcd(2, n))²]`
-/

namespace A016826.P16579149525302344476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (Nat.gcd 2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P16579149525302344476

namespace A016826

/-- `record[((n-1)*gcd(2, n))²]` -/
def P16579149525302344476.Spec : Prop :=
  ∀ n, P16579149525302344476.a n = A016826 n

end A016826

/-! ## A016826.P7721745243559461306

`record[xor(3, n+1+n)²]`
-/

namespace A016826.P7721745243559461306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P7721745243559461306

namespace A016826

/-- `record[xor(3, n+1+n)²]` -/
def P7721745243559461306.Spec : Prop :=
  ∀ n, (P7721745243559461306.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P9589396880219121115

`record[((n+2)%or(3, n))²]`
-/

namespace A016826.P9589396880219121115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) % Nat.lor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016826.P9589396880219121115

namespace A016826

/-- `record[((n+2)%or(3, n))²]` -/
def P9589396880219121115.Spec : Prop :=
  ∀ n, (P9589396880219121115.a n : ℤ) = A016826 n

end A016826

/-! ## A016826.P3731369091211813310

`∩[or(4, (n+2)²), n²]`
-/

namespace A016826.P3731369091211813310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 ((n + 2) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A016826.P3731369091211813310

namespace A016826

/-- `∩[or(4, (n+2)²), n²]` -/
def P3731369091211813310.Spec : Prop :=
  ∀ n, (P3731369091211813310.a n : ℤ) = A016826 n

end A016826

/-!
# A016827: a(n) = (4n+2)^3.

The programs for A016827, the canonical program `A016827.P15145738709688113993` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016827 has offset 0).

The definition of A016827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^3` (program `A016827.P15145738709688113993`, by `A016827.P15145738709688113993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016827.P15145738709688113993

`(4*n+2)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016827

/-- `(4*n+2)^3` -/
def P15145738709688113993.Spec : Prop :=
  ∀ n, (P15145738709688113993.a n : ℤ) = A016827 n

theorem P15145738709688113993.correct : P15145738709688113993.Spec := by
  intro n
  simp only [A016827]

end A016827

/-! ## A016827.P2699352161030703960

`lcm(8, Δ[n²]^3)`
-/

namespace A016827.P2699352161030703960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3)

end

end A016827.P2699352161030703960

namespace A016827

/-- `lcm(8, Δ[n²]^3)` -/
def P2699352161030703960.Spec : Prop :=
  ∀ n, (P2699352161030703960.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P3349794970979446414

`record[lcm(2, n+1)^3]`
-/

namespace A016827.P3349794970979446414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P3349794970979446414

namespace A016827

/-- `record[lcm(2, n+1)^3]` -/
def P3349794970979446414.Spec : Prop :=
  ∀ n, (P3349794970979446414.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P15366301007500886024

`record[(2*xor(1, n))^3]`
-/

namespace A016827.P15366301007500886024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P15366301007500886024

namespace A016827

/-- `record[(2*xor(1, n))^3]` -/
def P15366301007500886024.Spec : Prop :=
  ∀ n, (P15366301007500886024.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P6109887867581367057

`record[(xor(3, n)-1)^3]`
-/

namespace A016827.P6109887867581367057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P6109887867581367057

namespace A016827

/-- `record[(xor(3, n)-1)^3]` -/
def P6109887867581367057.Spec : Prop :=
  ∀ n, P6109887867581367057.a n = A016827 n

end A016827

/-! ## A016827.P1389644293908680147

`8*or(1, 2*n)^3`
-/

namespace A016827.P1389644293908680147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.lor 1 (2 * n) ^ 3

end

end A016827.P1389644293908680147

namespace A016827

/-- `8*or(1, 2*n)^3` -/
def P1389644293908680147.Spec : Prop :=
  ∀ n, (P1389644293908680147.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P6495382680935409689

`8*xor(1, 2*n)^3`
-/

namespace A016827.P6495382680935409689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.xor 1 (2 * n) ^ 3

end

end A016827.P6495382680935409689

namespace A016827

/-- `8*xor(1, 2*n)^3` -/
def P6495382680935409689.Spec : Prop :=
  ∀ n, (P6495382680935409689.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P9701463460214504722

`8*Δ[C(2*n², 2)]`
-/

namespace A016827.P9701463460214504722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A016827.P9701463460214504722

namespace A016827

/-- `8*Δ[C(2*n², 2)]` -/
def P9701463460214504722.Spec : Prop :=
  ∀ n, P9701463460214504722.a n = A016827 n

end A016827

/-! ## A016827.P8647428228062431979

`Δ[or(1, -(2*n)²)²]`
-/

namespace A016827.P8647428228062431979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016827.P8647428228062431979

namespace A016827

/-- `Δ[or(1, -(2*n)²)²]` -/
def P8647428228062431979.Spec : Prop :=
  ∀ n, P8647428228062431979.a n = A016827 n

end A016827

/-! ## A016827.P6024599821060435011

`Δ[xor(1, -(2*n)²)²]`
-/

namespace A016827.P6024599821060435011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016827.P6024599821060435011

namespace A016827

/-- `Δ[xor(1, -(2*n)²)²]` -/
def P6024599821060435011.Spec : Prop :=
  ∀ n, P6024599821060435011.a n = A016827 n

end A016827

/-! ## A016827.P8385112393404729840

`record[(lcm(4, 1-n)/2)^3]`
-/

namespace A016827.P8385112393404729840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 4 (1 - (n : ℤ)) : ℚ) / 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P8385112393404729840

namespace A016827

/-- `record[(lcm(4, 1-n)/2)^3]` -/
def P8385112393404729840.Spec : Prop :=
  ∀ n, P8385112393404729840.a n = (A016827 n : ℚ)

end A016827

/-! ## A016827.P8109346027616990676

`record[(n+2)^(gcd(4, n)-1)]`
-/

namespace A016827.P8109346027616990676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((Nat.gcd 4 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P8109346027616990676

namespace A016827

/-- `record[(n+2)^(gcd(4, n)-1)]` -/
def P8109346027616990676.Spec : Prop :=
  ∀ n, P8109346027616990676.a n = (A016827 n : ℚ)

end A016827

/-! ## A016827.P16019590661586447599

`Δ[or(1, (1-(2*n)²)²)]`
-/

namespace A016827.P16019590661586447599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - ((2 * n) ^ 2 : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016827.P16019590661586447599

namespace A016827

/-- `Δ[or(1, (1-(2*n)²)²)]` -/
def P16019590661586447599.Spec : Prop :=
  ∀ n, P16019590661586447599.a n = A016827 n

end A016827

/-! ## A016827.P3078898945161569761

`Δ[xor(1, (1-(2*n)²)²)]`
-/

namespace A016827.P3078898945161569761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - ((2 * n) ^ 2 : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016827.P3078898945161569761

namespace A016827

/-- `Δ[xor(1, (1-(2*n)²)²)]` -/
def P3078898945161569761.Spec : Prop :=
  ∀ n, P3078898945161569761.a n = A016827 n

end A016827

/-! ## A016827.P10192418745449520168

`record[xor(3, n+1+n)^3]`
-/

namespace A016827.P10192418745449520168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1 + n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P10192418745449520168

namespace A016827

/-- `record[xor(3, n+1+n)^3]` -/
def P10192418745449520168.Spec : Prop :=
  ∀ n, (P10192418745449520168.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P4136121631876057843

`Δ[(1-lcm(n, (2*n)²))²]`
-/

namespace A016827.P4136121631876057843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm n ((2 * n) ^ 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016827.P4136121631876057843

namespace A016827

/-- `Δ[(1-lcm(n, (2*n)²))²]` -/
def P4136121631876057843.Spec : Prop :=
  ∀ n, P4136121631876057843.a n = A016827 n

end A016827

/-! ## A016827.P9563749469769549819

`or(2, 4*n)²*or(2, 4*n)`
-/

namespace A016827.P9563749469769549819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * n) ^ 2 * Nat.lor 2 (4 * n)

end

end A016827.P9563749469769549819

namespace A016827

/-- `or(2, 4*n)²*or(2, 4*n)` -/
def P9563749469769549819.Spec : Prop :=
  ∀ n, (P9563749469769549819.a n : ℤ) = A016827 n

end A016827

/-! ## A016827.P9999193093089543765

`record[(n+2)^and(3, (n-1)^3)]`
-/

namespace A016827.P9999193093089543765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.land 3 (((n : ℤ) - 1) ^ 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P9999193093089543765

namespace A016827

/-- `record[(n+2)^and(3, (n-1)^3)]` -/
def P9999193093089543765.Spec : Prop :=
  ∀ n, P9999193093089543765.a n = (A016827 n : ℚ)

end A016827

/-! ## A016827.P9996155722891294521

`record[-(-(n+2))^and(3, n+3)]`
-/

namespace A016827.P9996155722891294521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n + 2 : ℤ)) ^ Nat.land 3 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016827.P9996155722891294521

namespace A016827

/-- `record[-(-(n+2))^and(3, n+3)]` -/
def P9996155722891294521.Spec : Prop :=
  ∀ n, P9996155722891294521.a n = A016827 n

end A016827

/-! ## A016827.P6691186454991619809

`Δ[lcm(n+1+n, n-1+n)²]`
-/

namespace A016827.P6691186454991619809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 + n : ℤ) ((n : ℤ) - 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016827.P6691186454991619809

namespace A016827

/-- `Δ[lcm(n+1+n, n-1+n)²]` -/
def P6691186454991619809.Spec : Prop :=
  ∀ n, P6691186454991619809.a n = A016827 n

end A016827

/-!
# A016828: a(n) = (4*n+2)^4.

The programs for A016828, the canonical program `A016828.P5235314446620895365` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016828 has offset 0).

The definition of A016828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^4` (program `A016828.P5235314446620895365`, by `A016828.P5235314446620895365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016828.P5235314446620895365

`(4*n+2)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016828

/-- `(4*n+2)^4` -/
def P5235314446620895365.Spec : Prop :=
  ∀ n, (P5235314446620895365.a n : ℤ) = A016828 n

theorem P5235314446620895365.correct : P5235314446620895365.Spec := by
  intro n
  simp only [A016828]

end A016828

/-! ## A016828.P2655076976343246116

`16*A016756(n)`
-/

namespace A016828.P2655076976343246116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016756 n

end

end A016828.P2655076976343246116

namespace A016828

/-- `16*A016756(n)` -/
def P2655076976343246116.Spec : Prop :=
  ∀ n, P2655076976343246116.a n = A016828 n

end A016828

/-! ## A016828.P2508313411766373825

`or(2, 4*n)²²`
-/

namespace A016828.P2508313411766373825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * n) ^ 2) ^ 2

end

end A016828.P2508313411766373825

namespace A016828

/-- `or(2, 4*n)²²` -/
def P2508313411766373825.Spec : Prop :=
  ∀ n, (P2508313411766373825.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P17686567149015800094

`xor(2, 4*n)²²`
-/

namespace A016828.P17686567149015800094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * n) ^ 2) ^ 2

end

end A016828.P17686567149015800094

namespace A016828

/-- `xor(2, 4*n)²²` -/
def P17686567149015800094.Spec : Prop :=
  ∀ n, (P17686567149015800094.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P11792974264825527280

`lcm(2, Δ[n²])²²`
-/

namespace A016828.P11792974264825527280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016828.P11792974264825527280

namespace A016828

/-- `lcm(2, Δ[n²])²²` -/
def P11792974264825527280.Spec : Prop :=
  ∀ n, (P11792974264825527280.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P1666019146535938384

`record[(1-xor(3, n))^4]`
-/

namespace A016828.P1666019146535938384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 3 n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P1666019146535938384

namespace A016828

/-- `record[(1-xor(3, n))^4]` -/
def P1666019146535938384.Spec : Prop :=
  ∀ n, P1666019146535938384.a n = A016828 n

end A016828

/-! ## A016828.P5697148920055746259

`record[(2*xor(1, n))^4]`
-/

namespace A016828.P5697148920055746259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P5697148920055746259

namespace A016828

/-- `record[(2*xor(1, n))^4]` -/
def P5697148920055746259.Spec : Prop :=
  ∀ n, (P5697148920055746259.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P5665888663011777947

`record[(n+2)^gcd(4, n)]`
-/

namespace A016828.P5665888663011777947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P5665888663011777947

namespace A016828

/-- `record[(n+2)^gcd(4, n)]` -/
def P5665888663011777947.Spec : Prop :=
  ∀ n, (P5665888663011777947.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P8257080730346598802

`record[lcm(4, (n+1)²)²]`
-/

namespace A016828.P8257080730346598802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P8257080730346598802

namespace A016828

/-- `record[lcm(4, (n+1)²)²]` -/
def P8257080730346598802.Spec : Prop :=
  ∀ n, (P8257080730346598802.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P1019439673061477740

`record[(1-xor(3, n))²²]`
-/

namespace A016828.P1019439673061477740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.xor 3 n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P1019439673061477740

namespace A016828

/-- `record[(1-xor(3, n))²²]` -/
def P1019439673061477740.Spec : Prop :=
  ∀ n, P1019439673061477740.a n = A016828 n

end A016828

/-! ## A016828.P12039546812590982237

`eq[2, and(n, -n)]²²`
-/

namespace A016828.P12039546812590982237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016828.P12039546812590982237

namespace A016828

/-- `eq[2, and(n, -n)]²²` -/
def P12039546812590982237.Spec : Prop :=
  ∀ n, (P12039546812590982237.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P16690326529330690414

`lcm(8, (4*n+2)²²)`
-/

namespace A016828.P16690326529330690414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (((4 * n + 2) ^ 2) ^ 2)

end

end A016828.P16690326529330690414

namespace A016828

/-- `lcm(8, (4*n+2)²²)` -/
def P16690326529330690414.Spec : Prop :=
  ∀ n, (P16690326529330690414.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P7405665501494120252

`lt[1, val(n+2, 2)]²²`
-/

namespace A016828.P7405665501494120252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016828.P7405665501494120252

namespace A016828

/-- `lt[1, val(n+2, 2)]²²` -/
def P7405665501494120252.Spec : Prop :=
  ∀ n, (P7405665501494120252.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P7141136929349056523

`lt[xor(3, n+1), n]²²`
-/

namespace A016828.P7141136929349056523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016828.P7141136929349056523

namespace A016828

/-- `lt[xor(3, n+1), n]²²` -/
def P7141136929349056523.Spec : Prop :=
  ∀ n, (P7141136929349056523.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P12199501083234484010

`eq[3, xor(n, n-1)]²²`
-/

namespace A016828.P12199501083234484010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016828.P12199501083234484010

namespace A016828

/-- `eq[3, xor(n, n-1)]²²` -/
def P12199501083234484010.Spec : Prop :=
  ∀ n, (P12199501083234484010.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P7505877363416491321

`lt[n, xor(3, n-2)]²²`
-/

namespace A016828.P7505877363416491321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A016828.P7505877363416491321

namespace A016828

/-- `lt[n, xor(3, n-2)]²²` -/
def P7505877363416491321.Spec : Prop :=
  ∀ n, (P7505877363416491321.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P18023823367683754522

`record[lcm(n+1, 4/2)^4]`
-/

namespace A016828.P18023823367683754522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P18023823367683754522

namespace A016828

/-- `record[lcm(n+1, 4/2)^4]` -/
def P18023823367683754522.Spec : Prop :=
  ∀ n, (P18023823367683754522.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P14143010112664970544

`(Δ[C(2*n, 2)]+1)²²`
-/

namespace A016828.P14143010112664970544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2

end

end A016828.P14143010112664970544

namespace A016828

/-- `(Δ[C(2*n, 2)]+1)²²` -/
def P14143010112664970544.Spec : Prop :=
  ∀ n, P14143010112664970544.a n = A016828 n

end A016828

/-! ## A016828.P3798319557318576460

`record[xor(3, n+1+n)^4]`
-/

namespace A016828.P3798319557318576460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1 + n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P3798319557318576460

namespace A016828

/-- `record[xor(3, n+1+n)^4]` -/
def P3798319557318576460.Spec : Prop :=
  ∀ n, (P3798319557318576460.a n : ℤ) = A016828 n

end A016828

/-! ## A016828.P3009900461422872672

`record[xor(3, n+1+n)²²]`
-/

namespace A016828.P3009900461422872672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (n + 1 + n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016828.P3009900461422872672

namespace A016828

/-- `record[xor(3, n+1+n)²²]` -/
def P3009900461422872672.Spec : Prop :=
  ∀ n, (P3009900461422872672.a n : ℤ) = A016828 n

end A016828

/-!
# A016829: a(n) = (4n+2)^5.

The programs for A016829, the canonical program `A016829.P4272908375837523993` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016829 has offset 0).

The definition of A016829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^5` (program `A016829.P4272908375837523993`, by `A016829.P4272908375837523993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016829.P4272908375837523993

`(4*n+2)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016829

/-- `(4*n+2)^5` -/
def P4272908375837523993.Spec : Prop :=
  ∀ n, (P4272908375837523993.a n : ℤ) = A016829 n

theorem P4272908375837523993.correct : P4272908375837523993.Spec := by
  intro n
  simp only [A016829]

end A016829

/-! ## A016829.P17313938796595216703

`record[lcm(2, n+1)^5]`
-/

namespace A016829.P17313938796595216703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P17313938796595216703

namespace A016829

/-- `record[lcm(2, n+1)^5]` -/
def P17313938796595216703.Spec : Prop :=
  ∀ n, (P17313938796595216703.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P8392972897516327951

`record[(2*xor(1, n))^5]`
-/

namespace A016829.P8392972897516327951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P8392972897516327951

namespace A016829

/-- `record[(2*xor(1, n))^5]` -/
def P8392972897516327951.Spec : Prop :=
  ∀ n, (P8392972897516327951.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P9182568319011198102

`record[(xor(3, n)-1)^5]`
-/

namespace A016829.P9182568319011198102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P9182568319011198102

namespace A016829

/-- `record[(xor(3, n)-1)^5]` -/
def P9182568319011198102.Spec : Prop :=
  ∀ n, P9182568319011198102.a n = A016829 n

end A016829

/-! ## A016829.P10328442357554392370

`record[(lcm(4, 1-n)/2)^5]`
-/

namespace A016829.P10328442357554392370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 4 (1 - (n : ℤ)) : ℚ) / 2) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P10328442357554392370

namespace A016829

/-- `record[(lcm(4, 1-n)/2)^5]` -/
def P10328442357554392370.Spec : Prop :=
  ∀ n, P10328442357554392370.a n = (A016829 n : ℚ)

end A016829

/-! ## A016829.P7477944437346791997

`record[(gcd(4, n+2)+n)^5]`
-/

namespace A016829.P7477944437346791997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 2) + n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P7477944437346791997

namespace A016829

/-- `record[(gcd(4, n+2)+n)^5]` -/
def P7477944437346791997.Spec : Prop :=
  ∀ n, (P7477944437346791997.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P4134346539509600862

`record[xor(3, n+1+n)^5]`
-/

namespace A016829.P4134346539509600862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1 + n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016829.P4134346539509600862

namespace A016829

/-- `record[xor(3, n+1+n)^5]` -/
def P4134346539509600862.Spec : Prop :=
  ∀ n, (P4134346539509600862.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P8894578754709213342

`sqrt(A016834(n))`
-/

namespace A016829.P8894578754709213342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016834 n : ℝ)

end

end A016829.P8894578754709213342

namespace A016829

/-- `sqrt(A016834(n))` -/
def P8894578754709213342.Spec : Prop :=
  ∀ n, P8894578754709213342.a n = (A016829 n : ℝ)

end A016829

/-! ## A016829.P3066215009562349254

`sqrt(A016826(n)^5)`
-/

namespace A016829.P3066215009562349254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016826 n ^ 5 : ℝ)

end

end A016829.P3066215009562349254

namespace A016829

/-- `sqrt(A016826(n)^5)` -/
def P3066215009562349254.Spec : Prop :=
  ∀ n, P3066215009562349254.a n = (A016829 n : ℝ)

end A016829

/-! ## A016829.P16276769221198467791

`abs((A016777(n)+n+1)^5-1)+1`
-/

namespace A016829.P16276769221198467791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016777 n + (n + 1 : ℤ)) ^ 5 - 1| + 1

end

end A016829.P16276769221198467791

namespace A016829

/-- `abs((A016777(n)+n+1)^5-1)+1` -/
def P16276769221198467791.Spec : Prop :=
  ∀ n, P16276769221198467791.a n = A016829 n

end A016829

/-! ## A016829.P8949684674176167925

`A016825(n)*A016828(n)`
-/

namespace A016829.P8949684674176167925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A016828 n

end

end A016829.P8949684674176167925

namespace A016829

/-- `A016825(n)*A016828(n)` -/
def P8949684674176167925.Spec : Prop :=
  ∀ n, P8949684674176167925.a n = A016829 n

end A016829

/-! ## A016829.P12429447008284487929

`A016826(n)*A016827(n)`
-/

namespace A016829.P12429447008284487929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n * A016827 n

end

end A016829.P12429447008284487929

namespace A016829

/-- `A016826(n)*A016827(n)` -/
def P12429447008284487929.Spec : Prop :=
  ∀ n, P12429447008284487929.a n = A016829 n

end A016829

/-! ## A016829.P3314757314488617418

`A016830(n)/A016825(n)`
-/

namespace A016829.P3314757314488617418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016830 n : ℚ) / (A016825 n : ℚ)

end

end A016829.P3314757314488617418

namespace A016829

/-- `A016830(n)/A016825(n)` -/
def P3314757314488617418.Spec : Prop :=
  ∀ n, P3314757314488617418.a n = (A016829 n : ℚ)

end A016829

/-! ## A016829.P1535002503081315860

`A016831(n)/A016826(n)`
-/

namespace A016829.P1535002503081315860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016831 n : ℚ) / (A016826 n : ℚ)

end

end A016829.P1535002503081315860

namespace A016829

/-- `A016831(n)/A016826(n)` -/
def P1535002503081315860.Spec : Prop :=
  ∀ n, P1535002503081315860.a n = (A016829 n : ℚ)

end A016829

/-! ## A016829.P11419787562013464773

`A016832(n)/A016827(n)`
-/

namespace A016829.P11419787562013464773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016832 n : ℚ) / (A016827 n : ℚ)

end

end A016829.P11419787562013464773

namespace A016829

/-- `A016832(n)/A016827(n)` -/
def P11419787562013464773.Spec : Prop :=
  ∀ n, P11419787562013464773.a n = (A016829 n : ℚ)

end A016829

/-! ## A016829.P3556234638407359478

`A016836(n)/A016831(n)`
-/

namespace A016829.P3556234638407359478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016836 n : ℚ) / (A016831 n : ℚ)

end

end A016829.P3556234638407359478

namespace A016829

/-- `A016836(n)/A016831(n)` -/
def P3556234638407359478.Spec : Prop :=
  ∀ n, P3556234638407359478.a n = (A016829 n : ℚ)

end A016829

/-! ## A016829.P5129115787878627434

`gcd(A017117(n), A017597(n))`
-/

namespace A016829.P5129115787878627434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017117 n) (A017597 n)

end

end A016829.P5129115787878627434

namespace A016829

/-- `gcd(A017117(n), A017597(n))` -/
def P5129115787878627434.Spec : Prop :=
  ∀ n, (P5129115787878627434.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P4939707720795132066

`∪[A017093(n), A017141(n)]`
-/

namespace A016829.P4939707720795132066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017141 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016829.P4939707720795132066

namespace A016829

/-- `∪[A017093(n), A017141(n)]` -/
def P4939707720795132066.Spec : Prop :=
  ∀ n, (P4939707720795132066.a n : ℤ) = A016829 n

end A016829

/-! ## A016829.P12675477677750537806

`A016825(n)²*A016827(n)`
-/

namespace A016829.P12675477677750537806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n ^ 2 * A016827 n

end

end A016829.P12675477677750537806

namespace A016829

/-- `A016825(n)²*A016827(n)` -/
def P12675477677750537806.Spec : Prop :=
  ∀ n, P12675477677750537806.a n = A016829 n

end A016829

/-! ## A016829.P8809379039318528324

`A016831(n)/A016825(n)²`
-/

namespace A016829.P8809379039318528324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016831 n : ℚ) / (A016825 n ^ 2 : ℚ)

end

end A016829.P8809379039318528324

namespace A016829

/-- `A016831(n)/A016825(n)²` -/
def P8809379039318528324.Spec : Prop :=
  ∀ n, P8809379039318528324.a n = (A016829 n : ℚ)

end A016829

/-!
# A016830: a(n) = (4*n+2)^6.

The programs for A016830, the canonical program `A016830.P16460860161337745608` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016830 has offset 0).

The definition of A016830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^6` (program `A016830.P16460860161337745608`, by `A016830.P16460860161337745608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016830.P16460860161337745608

`(4*n+2)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016830

/-- `(4*n+2)^6` -/
def P16460860161337745608.Spec : Prop :=
  ∀ n, (P16460860161337745608.a n : ℤ) = A016830 n

theorem P16460860161337745608.correct : P16460860161337745608.Spec := by
  intro n
  simp only [A016830]

end A016830

/-! ## A016830.P17516840374675726982

`A016827(n)²`
-/

namespace A016830.P17516840374675726982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n ^ 2

end

end A016830.P17516840374675726982

namespace A016830

/-- `A016827(n)²` -/
def P17516840374675726982.Spec : Prop :=
  ∀ n, P17516840374675726982.a n = A016830 n

end A016830

/-! ## A016830.P16854699043783849658

`64*A016758(n)`
-/

namespace A016830.P16854699043783849658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016758 n

end

end A016830.P16854699043783849658

namespace A016830

/-- `64*A016758(n)` -/
def P16854699043783849658.Spec : Prop :=
  ∀ n, P16854699043783849658.a n = A016830 n

end A016830

/-! ## A016830.P6871843303575150932

`(or(2, 4*n)^3)²`
-/

namespace A016830.P6871843303575150932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * n) ^ 3) ^ 2

end

end A016830.P6871843303575150932

namespace A016830

/-- `(or(2, 4*n)^3)²` -/
def P6871843303575150932.Spec : Prop :=
  ∀ n, (P6871843303575150932.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P1516543533375417363

`(xor(2, 4*n)^3)²`
-/

namespace A016830.P1516543533375417363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * n) ^ 3) ^ 2

end

end A016830.P1516543533375417363

namespace A016830

/-- `(xor(2, 4*n)^3)²` -/
def P1516543533375417363.Spec : Prop :=
  ∀ n, (P1516543533375417363.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P17619550023127820171

`record[lcm(2, n+1)^6]`
-/

namespace A016830.P17619550023127820171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P17619550023127820171

namespace A016830

/-- `record[lcm(2, n+1)^6]` -/
def P17619550023127820171.Spec : Prop :=
  ∀ n, (P17619550023127820171.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P5567933653685141756

`record[(1-xor(3, n))^6]`
-/

namespace A016830.P5567933653685141756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 3 n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P5567933653685141756

namespace A016830

/-- `record[(1-xor(3, n))^6]` -/
def P5567933653685141756.Spec : Prop :=
  ∀ n, P5567933653685141756.a n = A016830 n

end A016830

/-! ## A016830.P10019379086223528799

`record[(2*xor(1, n))^6]`
-/

namespace A016830.P10019379086223528799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P10019379086223528799

namespace A016830

/-- `record[(2*xor(1, n))^6]` -/
def P10019379086223528799.Spec : Prop :=
  ∀ n, (P10019379086223528799.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P14448293143759040831

`record[lcm(8, (n-1)^3)²]`
-/

namespace A016830.P14448293143759040831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (((n : ℤ) - 1) ^ 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P14448293143759040831

namespace A016830

/-- `record[lcm(8, (n-1)^3)²]` -/
def P14448293143759040831.Spec : Prop :=
  ∀ n, (P14448293143759040831.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P6238343159583201579

`(lt[1, val(n+2, 2)]^3)²`
-/

namespace A016830.P6238343159583201579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016830.P6238343159583201579

namespace A016830

/-- `(lt[1, val(n+2, 2)]^3)²` -/
def P6238343159583201579.Spec : Prop :=
  ∀ n, (P6238343159583201579.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P10338398689956893627

`(lt[xor(3, n+1), n]^3)²`
-/

namespace A016830.P10338398689956893627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016830.P10338398689956893627

namespace A016830

/-- `(lt[xor(3, n+1), n]^3)²` -/
def P10338398689956893627.Spec : Prop :=
  ∀ n, (P10338398689956893627.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P10544379959891468117

`(eq[3, xor(n, n-1)]^3)²`
-/

namespace A016830.P10544379959891468117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3) ^ 2

end

end A016830.P10544379959891468117

namespace A016830

/-- `(eq[3, xor(n, n-1)]^3)²` -/
def P10544379959891468117.Spec : Prop :=
  ∀ n, (P10544379959891468117.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P15273771411098133116

`Δ[or(1, -(2*n)²)²]²`
-/

namespace A016830.P15273771411098133116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A016830.P15273771411098133116

namespace A016830

/-- `Δ[or(1, -(2*n)²)²]²` -/
def P15273771411098133116.Spec : Prop :=
  ∀ n, P15273771411098133116.a n = A016830 n

end A016830

/-! ## A016830.P12583362874378596843

`Δ[xor(1, -(2*n)²)²]²`
-/

namespace A016830.P12583362874378596843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A016830.P12583362874378596843

namespace A016830

/-- `Δ[xor(1, -(2*n)²)²]²` -/
def P12583362874378596843.Spec : Prop :=
  ∀ n, P12583362874378596843.a n = A016830 n

end A016830

/-! ## A016830.P465721984650363539

`record[(n+2)^((n+3)%4)!]`
-/

namespace A016830.P465721984650363539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.factorial ((n + 3) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P465721984650363539

namespace A016830

/-- `record[(n+2)^((n+3)%4)!]` -/
def P465721984650363539.Spec : Prop :=
  ∀ n, (P465721984650363539.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P15796393289788228827

`record[(n+2)^and(3, n-1)!]`
-/

namespace A016830.P15796393289788228827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.factorial (Int.land 3 ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016830.P15796393289788228827

namespace A016830

/-- `record[(n+2)^and(3, n-1)!]` -/
def P15796393289788228827.Spec : Prop :=
  ∀ n, (P15796393289788228827.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P8185515919031886869

`Δ[(1-lcm(n, (2*n)²))²]²`
-/

namespace A016830.P8185515919031886869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm n ((2 * n) ^ 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A016830.P8185515919031886869

namespace A016830

/-- `Δ[(1-lcm(n, (2*n)²))²]²` -/
def P8185515919031886869.Spec : Prop :=
  ∀ n, P8185515919031886869.a n = A016830 n

end A016830

/-! ## A016830.P7116015646179837383

`(eq[n+2, lcm(4, n+2)]^3)²`
-/

namespace A016830.P7116015646179837383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016830.P7116015646179837383

namespace A016830

/-- `(eq[n+2, lcm(4, n+2)]^3)²` -/
def P7116015646179837383.Spec : Prop :=
  ∀ n, (P7116015646179837383.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P12673494266244363192

`(lt[and(n+1, n+2), n]^3)²`
-/

namespace A016830.P12673494266244363192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016830.P12673494266244363192

namespace A016830

/-- `(lt[and(n+1, n+2), n]^3)²` -/
def P12673494266244363192.Spec : Prop :=
  ∀ n, (P12673494266244363192.a n : ℤ) = A016830 n

end A016830

/-! ## A016830.P10260425930537061914

`(eq[n+1, or(n, n-1)]^3)²`
-/

namespace A016830.P10260425930537061914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3) ^ 2

end

end A016830.P10260425930537061914

namespace A016830

/-- `(eq[n+1, or(n, n-1)]^3)²` -/
def P10260425930537061914.Spec : Prop :=
  ∀ n, (P10260425930537061914.a n : ℤ) = A016830 n

end A016830

/-!
# A016831: a(n) = (4n+2)^7.

The programs for A016831, the canonical program `A016831.P2624877946558227194` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016831 has offset 0).

The definition of A016831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^7` (program `A016831.P2624877946558227194`, by `A016831.P2624877946558227194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016831.P2624877946558227194

`(4*n+2)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016831

/-- `(4*n+2)^7` -/
def P2624877946558227194.Spec : Prop :=
  ∀ n, (P2624877946558227194.a n : ℤ) = A016831 n

theorem P2624877946558227194.correct : P2624877946558227194.Spec := by
  intro n
  simp only [A016831]

end A016831

/-! ## A016831.P5312744222787013296

`record[lcm(2, n+1)^7]`
-/

namespace A016831.P5312744222787013296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016831.P5312744222787013296

namespace A016831

/-- `record[lcm(2, n+1)^7]` -/
def P5312744222787013296.Spec : Prop :=
  ∀ n, (P5312744222787013296.a n : ℤ) = A016831 n

end A016831

/-! ## A016831.P14557000907517380922

`record[(2*xor(1, n))^7]`
-/

namespace A016831.P14557000907517380922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016831.P14557000907517380922

namespace A016831

/-- `record[(2*xor(1, n))^7]` -/
def P14557000907517380922.Spec : Prop :=
  ∀ n, (P14557000907517380922.a n : ℤ) = A016831 n

end A016831

/-! ## A016831.P10632014475757887072

`record[(xor(3, n)-1)^7]`
-/

namespace A016831.P10632014475757887072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) - 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016831.P10632014475757887072

namespace A016831

/-- `record[(xor(3, n)-1)^7]` -/
def P10632014475757887072.Spec : Prop :=
  ∀ n, P10632014475757887072.a n = A016831 n

end A016831

/-! ## A016831.P9027154911375516428

`record[xor(3, or(1, n))^7]`
-/

namespace A016831.P9027154911375516428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 1 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016831.P9027154911375516428

namespace A016831

/-- `record[xor(3, or(1, n))^7]` -/
def P9027154911375516428.Spec : Prop :=
  ∀ n, (P9027154911375516428.a n : ℤ) = A016831 n

end A016831

/-! ## A016831.P1166148964339549429

`abs((1-A004767(n))^7)`
-/

namespace A016831.P1166148964339549429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A004767 n) ^ 7|

end

end A016831.P1166148964339549429

namespace A016831

/-- `abs((1-A004767(n))^7)` -/
def P1166148964339549429.Spec : Prop :=
  ∀ n, P1166148964339549429.a n = A016831 n

end A016831

/-! ## A016831.P5564811885257450282

`(4*n+2)*A016830(n)`
-/

namespace A016831.P5564811885257450282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A016830 n

end

end A016831.P5564811885257450282

namespace A016831

/-- `(4*n+2)*A016830(n)` -/
def P5564811885257450282.Spec : Prop :=
  ∀ n, P5564811885257450282.a n = A016831 n

end A016831

/-! ## A016831.P7410336842978962

`A016826(n)*A016829(n)`
-/

namespace A016831.P7410336842978962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n * A016829 n

end

end A016831.P7410336842978962

namespace A016831

/-- `A016826(n)*A016829(n)` -/
def P7410336842978962.Spec : Prop :=
  ∀ n, P7410336842978962.a n = A016831 n

end A016831

/-! ## A016831.P13110250892205097162

`A016827(n)*A016828(n)`
-/

namespace A016831.P13110250892205097162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n * A016828 n

end

end A016831.P13110250892205097162

namespace A016831

/-- `A016827(n)*A016828(n)` -/
def P13110250892205097162.Spec : Prop :=
  ∀ n, P13110250892205097162.a n = A016831 n

end A016831

/-! ## A016831.P16904639393416299222

`A016832(n)/A016825(n)`
-/

namespace A016831.P16904639393416299222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016832 n : ℚ) / (A016825 n : ℚ)

end

end A016831.P16904639393416299222

namespace A016831

/-- `A016832(n)/A016825(n)` -/
def P16904639393416299222.Spec : Prop :=
  ∀ n, P16904639393416299222.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P4323315401483470143

`A016836(n)/A016829(n)`
-/

namespace A016831.P4323315401483470143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016836 n : ℚ) / (A016829 n : ℚ)

end

end A016831.P4323315401483470143

namespace A016831

/-- `A016836(n)/A016829(n)` -/
def P4323315401483470143.Spec : Prop :=
  ∀ n, P4323315401483470143.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P13372047659485696300

`A016825(n)²*A016829(n)`
-/

namespace A016831.P13372047659485696300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n ^ 2 * A016829 n

end

end A016831.P13372047659485696300

namespace A016831

/-- `A016825(n)²*A016829(n)` -/
def P13372047659485696300.Spec : Prop :=
  ∀ n, P13372047659485696300.a n = A016831 n

end A016831

/-! ## A016831.P7241636482077239797

`A016826(n)²*A016827(n)`
-/

namespace A016831.P7241636482077239797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n ^ 2 * A016827 n

end

end A016831.P7241636482077239797

namespace A016831

/-- `A016826(n)²*A016827(n)` -/
def P7241636482077239797.Spec : Prop :=
  ∀ n, P7241636482077239797.a n = A016831 n

end A016831

/-! ## A016831.P14743769288568764050

`A016827(n)²*A016825(n)`
-/

namespace A016831.P14743769288568764050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n ^ 2 * A016825 n

end

end A016831.P14743769288568764050

namespace A016831

/-- `A016827(n)²*A016825(n)` -/
def P14743769288568764050.Spec : Prop :=
  ∀ n, P14743769288568764050.a n = A016831 n

end A016831

/-! ## A016831.P9969731106829052190

`A016828(n)²/A016825(n)`
-/

namespace A016831.P9969731106829052190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016828 n ^ 2 : ℚ) / (A016825 n : ℚ)

end

end A016831.P9969731106829052190

namespace A016831

/-- `A016828(n)²/A016825(n)` -/
def P9969731106829052190.Spec : Prop :=
  ∀ n, P9969731106829052190.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P4784550243043223141

`A016830(n)²/A016829(n)`
-/

namespace A016831.P4784550243043223141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016830 n ^ 2 : ℚ) / (A016829 n : ℚ)

end

end A016831.P4784550243043223141

namespace A016831

/-- `A016830(n)²/A016829(n)` -/
def P4784550243043223141.Spec : Prop :=
  ∀ n, P4784550243043223141.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P12431663945244758624

`A016833(n)/A016825(n)²`
-/

namespace A016831.P12431663945244758624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016833 n : ℚ) / (A016825 n ^ 2 : ℚ)

end

end A016831.P12431663945244758624

namespace A016831

/-- `A016833(n)/A016825(n)²` -/
def P12431663945244758624.Spec : Prop :=
  ∀ n, P12431663945244758624.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P13475630057126731650

`A016835(n)/A016826(n)²`
-/

namespace A016831.P13475630057126731650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016835 n : ℚ) / (A016826 n ^ 2 : ℚ)

end

end A016831.P13475630057126731650

namespace A016831

/-- `A016835(n)/A016826(n)²` -/
def P13475630057126731650.Spec : Prop :=
  ∀ n, P13475630057126731650.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P15512956946714270384

`A016832(n)/A130824(n+1)`
-/

namespace A016831.P15512956946714270384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016832 n : ℚ) / (A130824 (n + 1) : ℚ)

end

end A016831.P15512956946714270384

namespace A016831

/-- `A016832(n)/A130824(n+1)` -/
def P15512956946714270384.Spec : Prop :=
  ∀ n, P15512956946714270384.a n = (A016831 n : ℚ)

end A016831

/-! ## A016831.P6062561680698729167

`A016826(n)²²/A016825(n)`
-/

namespace A016831.P6062561680698729167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016826 n ^ 2) ^ 2 : ℚ) / (A016825 n : ℚ)

end

end A016831.P6062561680698729167

namespace A016831

/-- `A016826(n)²²/A016825(n)` -/
def P6062561680698729167.Spec : Prop :=
  ∀ n, P6062561680698729167.a n = (A016831 n : ℚ)

end A016831

/-!
# A016832: a(n) = (4*n + 2)^8.

The programs for A016832, the canonical program `A016832.P2951353771397420253` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016832 has offset 0).

The definition of A016832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^8` (program `A016832.P2951353771397420253`, by `A016832.P2951353771397420253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016832.P2951353771397420253

`(4*n+2)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016832

/-- `(4*n+2)^8` -/
def P2951353771397420253.Spec : Prop :=
  ∀ n, (P2951353771397420253.a n : ℤ) = A016832 n

theorem P2951353771397420253.correct : P2951353771397420253.Spec := by
  intro n
  simp only [A016832]

end A016832

/-! ## A016832.P13639616987757950667

`(or(2, 4*n)^4)²`
-/

namespace A016832.P13639616987757950667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * n) ^ 4) ^ 2

end

end A016832.P13639616987757950667

namespace A016832

/-- `(or(2, 4*n)^4)²` -/
def P13639616987757950667.Spec : Prop :=
  ∀ n, (P13639616987757950667.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P13112027380164498362

`(xor(2, 4*n)^4)²`
-/

namespace A016832.P13112027380164498362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * n) ^ 4) ^ 2

end

end A016832.P13112027380164498362

namespace A016832

/-- `(xor(2, 4*n)^4)²` -/
def P13112027380164498362.Spec : Prop :=
  ∀ n, (P13112027380164498362.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P13080480390230816514

`record[lcm(2, n+1)^8]`
-/

namespace A016832.P13080480390230816514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016832.P13080480390230816514

namespace A016832

/-- `record[lcm(2, n+1)^8]` -/
def P13080480390230816514.Spec : Prop :=
  ∀ n, (P13080480390230816514.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P14729650693560319622

`record[(2*xor(1, n))^8]`
-/

namespace A016832.P14729650693560319622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016832.P14729650693560319622

namespace A016832

/-- `record[(2*xor(1, n))^8]` -/
def P14729650693560319622.Spec : Prop :=
  ∀ n, (P14729650693560319622.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P14748468758661613253

`or(2, 4*n)²²²`
-/

namespace A016832.P14748468758661613253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016832.P14748468758661613253

namespace A016832

/-- `or(2, 4*n)²²²` -/
def P14748468758661613253.Spec : Prop :=
  ∀ n, (P14748468758661613253.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P10914125022816308931

`xor(2, 4*n)²²²`
-/

namespace A016832.P10914125022816308931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016832.P10914125022816308931

namespace A016832

/-- `xor(2, 4*n)²²²` -/
def P10914125022816308931.Spec : Prop :=
  ∀ n, (P10914125022816308931.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P9458005441752988777

`lcm(4, Δ[n²]²)²²`
-/

namespace A016832.P9458005441752988777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016832.P9458005441752988777

namespace A016832

/-- `lcm(4, Δ[n²]²)²²` -/
def P9458005441752988777.Spec : Prop :=
  ∀ n, (P9458005441752988777.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P4783936744527810699

`record[((n+2)^gcd(4, n))²]`
-/

namespace A016832.P4783936744527810699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 4 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016832.P4783936744527810699

namespace A016832

/-- `record[((n+2)^gcd(4, n))²]` -/
def P4783936744527810699.Spec : Prop :=
  ∀ n, (P4783936744527810699.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P9664763837530386553

`(lt[1, val(n+2, 2)]^4)²`
-/

namespace A016832.P9664763837530386553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016832.P9664763837530386553

namespace A016832

/-- `(lt[1, val(n+2, 2)]^4)²` -/
def P9664763837530386553.Spec : Prop :=
  ∀ n, (P9664763837530386553.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P17962877872291471857

`record[(n-2)^gcd(8, 2*n)]`
-/

namespace A016832.P17962877872291471857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ Nat.gcd 8 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016832.P17962877872291471857

namespace A016832

/-- `record[(n-2)^gcd(8, 2*n)]` -/
def P17962877872291471857.Spec : Prop :=
  ∀ n, P17962877872291471857.a n = A016832 n

end A016832

/-! ## A016832.P2341683027116469068

`lt[1, val(n+2, 2)]²²²`
-/

namespace A016832.P2341683027116469068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016832.P2341683027116469068

namespace A016832

/-- `lt[1, val(n+2, 2)]²²²` -/
def P2341683027116469068.Spec : Prop :=
  ∀ n, (P2341683027116469068.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P2960997978921000613

`(lt[xor(3, n+1), n]^4)²`
-/

namespace A016832.P2960997978921000613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016832.P2960997978921000613

namespace A016832

/-- `(lt[xor(3, n+1), n]^4)²` -/
def P2960997978921000613.Spec : Prop :=
  ∀ n, (P2960997978921000613.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P16900995460805747723

`(eq[3, xor(n, n-1)]^4)²`
-/

namespace A016832.P16900995460805747723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 4) ^ 2

end

end A016832.P16900995460805747723

namespace A016832

/-- `(eq[3, xor(n, n-1)]^4)²` -/
def P16900995460805747723.Spec : Prop :=
  ∀ n, (P16900995460805747723.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P4667914809740196198

`lt[xor(3, n+1), n]²²²`
-/

namespace A016832.P4667914809740196198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016832.P4667914809740196198

namespace A016832

/-- `lt[xor(3, n+1), n]²²²` -/
def P4667914809740196198.Spec : Prop :=
  ∀ n, (P4667914809740196198.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P5099791902106602898

`eq[3, xor(n, n-1)]²²²`
-/

namespace A016832.P5099791902106602898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2) ^ 2

end

end A016832.P5099791902106602898

namespace A016832

/-- `eq[3, xor(n, n-1)]²²²` -/
def P5099791902106602898.Spec : Prop :=
  ∀ n, (P5099791902106602898.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P9699557410473635263

`(Δ[C(2*n, 2)]+1)²²²`
-/

namespace A016832.P9699557410473635263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2) ^ 2

end

end A016832.P9699557410473635263

namespace A016832

/-- `(Δ[C(2*n, 2)]+1)²²²` -/
def P9699557410473635263.Spec : Prop :=
  ∀ n, P9699557410473635263.a n = A016832 n

end A016832

/-! ## A016832.P15312242432722093626

`lcm(2*n+1, 4/2)²²²`
-/

namespace A016832.P15312242432722093626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) ^ 2) ^ 2) ^ 2

end

end A016832.P15312242432722093626

namespace A016832

/-- `lcm(2*n+1, 4/2)²²²` -/
def P15312242432722093626.Spec : Prop :=
  ∀ n, (P15312242432722093626.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P14171764930269199091

`(lt[and(n+1, n+2), n]^4)²`
-/

namespace A016832.P14171764930269199091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016832.P14171764930269199091

namespace A016832

/-- `(lt[and(n+1, n+2), n]^4)²` -/
def P14171764930269199091.Spec : Prop :=
  ∀ n, (P14171764930269199091.a n : ℤ) = A016832 n

end A016832

/-! ## A016832.P1992928260595001305

`(eq[n+1, or(n, n-1)]^4)²`
-/

namespace A016832.P1992928260595001305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 4) ^ 2

end

end A016832.P1992928260595001305

namespace A016832

/-- `(eq[n+1, or(n, n-1)]^4)²` -/
def P1992928260595001305.Spec : Prop :=
  ∀ n, (P1992928260595001305.a n : ℤ) = A016832 n

end A016832

/-!
# A016833: a(n) = (4n+2)^9.

The programs for A016833, the canonical program `A016833.P12755141053771216048` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016833 has offset 0).

The definition of A016833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^9` (program `A016833.P12755141053771216048`, by `A016833.P12755141053771216048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016833.P12755141053771216048

`(4*n+2)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016833

/-- `(4*n+2)^9` -/
def P12755141053771216048.Spec : Prop :=
  ∀ n, (P12755141053771216048.a n : ℤ) = A016833 n

theorem P12755141053771216048.correct : P12755141053771216048.Spec := by
  intro n
  simp only [A016833]

end A016833

/-! ## A016833.P16991753564082549135

`record[lcm(2, n+1)^9]`
-/

namespace A016833.P16991753564082549135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016833.P16991753564082549135

namespace A016833

/-- `record[lcm(2, n+1)^9]` -/
def P16991753564082549135.Spec : Prop :=
  ∀ n, (P16991753564082549135.a n : ℤ) = A016833 n

end A016833

/-! ## A016833.P9290123137219655478

`record[(2*xor(1, n))^9]`
-/

namespace A016833.P9290123137219655478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016833.P9290123137219655478

namespace A016833

/-- `record[(2*xor(1, n))^9]` -/
def P9290123137219655478.Spec : Prop :=
  ∀ n, (P9290123137219655478.a n : ℤ) = A016833 n

end A016833

/-! ## A016833.P8410968317757003872

`record[xor(2, and(n, n+1))^9]`
-/

namespace A016833.P8410968317757003872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land n (n + 1)) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016833.P8410968317757003872

namespace A016833

/-- `record[xor(2, and(n, n+1))^9]` -/
def P8410968317757003872.Spec : Prop :=
  ∀ n, (P8410968317757003872.a n : ℤ) = A016833 n

end A016833

/-! ## A016833.P5747622724556318645

`record[(n+2)^and(3, 3-n)²]`
-/

namespace A016833.P5747622724556318645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.land 3 (3 - (n : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016833.P5747622724556318645

namespace A016833

/-- `record[(n+2)^and(3, 3-n)²]` -/
def P5747622724556318645.Spec : Prop :=
  ∀ n, P5747622724556318645.a n = (A016833 n : ℚ)

end A016833

/-! ## A016833.P2062192139281039290

`(4*n+2)*A016832(n)`
-/

namespace A016833.P2062192139281039290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A016832 n

end

end A016833.P2062192139281039290

namespace A016833

/-- `(4*n+2)*A016832(n)` -/
def P2062192139281039290.Spec : Prop :=
  ∀ n, P2062192139281039290.a n = A016833 n

end A016833

/-! ## A016833.P1913310453820520497

`A016826(n)*A016831(n)`
-/

namespace A016833.P1913310453820520497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n * A016831 n

end

end A016833.P1913310453820520497

namespace A016833

/-- `A016826(n)*A016831(n)` -/
def P1913310453820520497.Spec : Prop :=
  ∀ n, P1913310453820520497.a n = A016833 n

end A016833

/-! ## A016833.P2826549234824753644

`A016827(n)*A016830(n)`
-/

namespace A016833.P2826549234824753644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n * A016830 n

end

end A016833.P2826549234824753644

namespace A016833

/-- `A016827(n)*A016830(n)` -/
def P2826549234824753644.Spec : Prop :=
  ∀ n, P2826549234824753644.a n = A016833 n

end A016833

/-! ## A016833.P13873287060735786307

`A016828(n)*A016829(n)`
-/

namespace A016833.P13873287060735786307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 n * A016829 n

end

end A016833.P13873287060735786307

namespace A016833

/-- `A016828(n)*A016829(n)` -/
def P13873287060735786307.Spec : Prop :=
  ∀ n, P13873287060735786307.a n = A016833 n

end A016833

/-! ## A016833.P13384104911825464244

`A016834(n)/A016825(n)`
-/

namespace A016833.P13384104911825464244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016834 n : ℚ) / (A016825 n : ℚ)

end

end A016833.P13384104911825464244

namespace A016833

/-- `A016834(n)/A016825(n)` -/
def P13384104911825464244.Spec : Prop :=
  ∀ n, P13384104911825464244.a n = (A016833 n : ℚ)

end A016833

/-! ## A016833.P15084745729361123737

`A016835(n)/A016826(n)`
-/

namespace A016833.P15084745729361123737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016835 n : ℚ) / (A016826 n : ℚ)

end

end A016833.P15084745729361123737

namespace A016833

/-- `A016835(n)/A016826(n)` -/
def P15084745729361123737.Spec : Prop :=
  ∀ n, P15084745729361123737.a n = (A016833 n : ℚ)

end A016833

/-! ## A016833.P1418681151499335723

`A016825(n)²*A016831(n)`
-/

namespace A016833.P1418681151499335723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n ^ 2 * A016831 n

end

end A016833.P1418681151499335723

namespace A016833

/-- `A016825(n)²*A016831(n)` -/
def P1418681151499335723.Spec : Prop :=
  ∀ n, P1418681151499335723.a n = A016833 n

end A016833

/-! ## A016833.P12705470742571242134

`A016826(n)²*A016829(n)`
-/

namespace A016833.P12705470742571242134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n ^ 2 * A016829 n

end

end A016833.P12705470742571242134

namespace A016833

/-- `A016826(n)²*A016829(n)` -/
def P12705470742571242134.Spec : Prop :=
  ∀ n, P12705470742571242134.a n = A016833 n

end A016833

/-! ## A016833.P14299391629460365837

`A016828(n)²*A016825(n)`
-/

namespace A016833.P14299391629460365837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 n ^ 2 * A016825 n

end

end A016833.P14299391629460365837

namespace A016833

/-- `A016828(n)²*A016825(n)` -/
def P14299391629460365837.Spec : Prop :=
  ∀ n, P14299391629460365837.a n = A016833 n

end A016833

/-! ## A016833.P12932220847920966401

`A016829(n)²/A016825(n)`
-/

namespace A016833.P12932220847920966401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016829 n ^ 2 : ℚ) / (A016825 n : ℚ)

end

end A016833.P12932220847920966401

namespace A016833

/-- `A016829(n)²/A016825(n)` -/
def P12932220847920966401.Spec : Prop :=
  ∀ n, P12932220847920966401.a n = (A016833 n : ℚ)

end A016833

/-! ## A016833.P17871901593623853582

`A016835(n)/A016825(n)²`
-/

namespace A016833.P17871901593623853582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016835 n : ℚ) / (A016825 n ^ 2 : ℚ)

end

end A016833.P17871901593623853582

namespace A016833

/-- `A016835(n)/A016825(n)²` -/
def P17871901593623853582.Spec : Prop :=
  ∀ n, P17871901593623853582.a n = (A016833 n : ℚ)

end A016833

/-! ## A016833.P15433796822818980781

`A016832(n)*A130824(n+1)`
-/

namespace A016833.P15433796822818980781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016832 n * A130824 (n + 1)

end

end A016833.P15433796822818980781

namespace A016833

/-- `A016832(n)*A130824(n+1)` -/
def P15433796822818980781.Spec : Prop :=
  ∀ n, P15433796822818980781.a n = A016833 n

end A016833

/-! ## A016833.P10149036191180436537

`A016826(n)²²*A016825(n)`
-/

namespace A016833.P10149036191180436537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016826 n ^ 2) ^ 2 * A016825 n

end

end A016833.P10149036191180436537

namespace A016833

/-- `A016826(n)²²*A016825(n)` -/
def P10149036191180436537.Spec : Prop :=
  ∀ n, P10149036191180436537.a n = A016833 n

end A016833

/-! ## A016833.P15860254207380095824

`8*A016755(n)²*A017115(n)`
-/

namespace A016833.P15860254207380095824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016755 n ^ 2 * A017115 n

end

end A016833.P15860254207380095824

namespace A016833

/-- `8*A016755(n)²*A017115(n)` -/
def P15860254207380095824.Spec : Prop :=
  ∀ n, P15860254207380095824.a n = A016833 n

end A016833

/-! ## A016833.P2033723427943970233

`A016825(n)*A016826(n)*A016830(n)`
-/

namespace A016833.P2033723427943970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A016826 n * A016830 n

end

end A016833.P2033723427943970233

namespace A016833

/-- `A016825(n)*A016826(n)*A016830(n)` -/
def P2033723427943970233.Spec : Prop :=
  ∀ n, P2033723427943970233.a n = A016833 n

end A016833

/-!
# A016834: a(n) = (4n+2)^10.

The programs for A016834, the canonical program `A016834.P8357198670827523963` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016834 has offset 0).

The definition of A016834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^10` (program `A016834.P8357198670827523963`, by `A016834.P8357198670827523963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016834.P8357198670827523963

`(4*n+2)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016834

/-- `(4*n+2)^10` -/
def P8357198670827523963.Spec : Prop :=
  ∀ n, (P8357198670827523963.a n : ℤ) = A016834 n

theorem P8357198670827523963.correct : P8357198670827523963.Spec := by
  intro n
  simp only [A016834]

end A016834

/-! ## A016834.P12375844243860143353

`(or(2, 4*n)^5)²`
-/

namespace A016834.P12375844243860143353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * n) ^ 5) ^ 2

end

end A016834.P12375844243860143353

namespace A016834

/-- `(or(2, 4*n)^5)²` -/
def P12375844243860143353.Spec : Prop :=
  ∀ n, (P12375844243860143353.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P8470022203283517598

`(xor(2, 4*n)^5)²`
-/

namespace A016834.P8470022203283517598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * n) ^ 5) ^ 2

end

end A016834.P8470022203283517598

namespace A016834

/-- `(xor(2, 4*n)^5)²` -/
def P8470022203283517598.Spec : Prop :=
  ∀ n, (P8470022203283517598.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P5052437747054971129

`record[lcm(2, n+1)^10]`
-/

namespace A016834.P5052437747054971129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016834.P5052437747054971129

namespace A016834

/-- `record[lcm(2, n+1)^10]` -/
def P5052437747054971129.Spec : Prop :=
  ∀ n, (P5052437747054971129.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P11191879002085832441

`record[(2*xor(1, n))^10]`
-/

namespace A016834.P11191879002085832441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016834.P11191879002085832441

namespace A016834

/-- `record[(2*xor(1, n))^10]` -/
def P11191879002085832441.Spec : Prop :=
  ∀ n, (P11191879002085832441.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P18425190872780766619

`(lt[1, val(n+2, 2)]^5)²`
-/

namespace A016834.P18425190872780766619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016834.P18425190872780766619

namespace A016834

/-- `(lt[1, val(n+2, 2)]^5)²` -/
def P18425190872780766619.Spec : Prop :=
  ∀ n, (P18425190872780766619.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P3404983576509867556

`(lt[xor(3, n+1), n]^5)²`
-/

namespace A016834.P3404983576509867556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016834.P3404983576509867556

namespace A016834

/-- `(lt[xor(3, n+1), n]^5)²` -/
def P3404983576509867556.Spec : Prop :=
  ∀ n, (P3404983576509867556.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P12546818929959056505

`(eq[3, xor(n, n-1)]^5)²`
-/

namespace A016834.P12546818929959056505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 5) ^ 2

end

end A016834.P12546818929959056505

namespace A016834

/-- `(eq[3, xor(n, n-1)]^5)²` -/
def P12546818929959056505.Spec : Prop :=
  ∀ n, (P12546818929959056505.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P15857221647281579332

`(eq[n+2, lcm(4, n+2)]^5)²`
-/

namespace A016834.P15857221647281579332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016834.P15857221647281579332

namespace A016834

/-- `(eq[n+2, lcm(4, n+2)]^5)²` -/
def P15857221647281579332.Spec : Prop :=
  ∀ n, (P15857221647281579332.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P272171326946413742

`(lt[and(n+1, n+2), n]^5)²`
-/

namespace A016834.P272171326946413742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016834.P272171326946413742

namespace A016834

/-- `(lt[and(n+1, n+2), n]^5)²` -/
def P272171326946413742.Spec : Prop :=
  ∀ n, (P272171326946413742.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P4276962719741551695

`(eq[n+1, or(n, n-1)]^5)²`
-/

namespace A016834.P4276962719741551695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 5) ^ 2

end

end A016834.P4276962719741551695

namespace A016834

/-- `(eq[n+1, or(n, n-1)]^5)²` -/
def P4276962719741551695.Spec : Prop :=
  ∀ n, (P4276962719741551695.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P17898248400065290908

`(lt[n+3, or(n+1, n+2)]^5)²`
-/

namespace A016834.P17898248400065290908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016834.P17898248400065290908

namespace A016834

/-- `(lt[n+3, or(n+1, n+2)]^5)²` -/
def P17898248400065290908.Spec : Prop :=
  ∀ n, (P17898248400065290908.a n : ℤ) = A016834 n

end A016834

/-! ## A016834.P12660156675147042776

`A016829(n)²`
-/

namespace A016834.P12660156675147042776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 n ^ 2

end

end A016834.P12660156675147042776

namespace A016834

/-- `A016829(n)²` -/
def P12660156675147042776.Spec : Prop :=
  ∀ n, P12660156675147042776.a n = A016834 n

end A016834

/-! ## A016834.P18439030678674649494

`(A016825(n)^5)²`
-/

namespace A016834.P18439030678674649494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n ^ 5) ^ 2

end

end A016834.P18439030678674649494

namespace A016834

/-- `(A016825(n)^5)²` -/
def P18439030678674649494.Spec : Prop :=
  ∀ n, P18439030678674649494.a n = A016834 n

end A016834

/-! ## A016834.P16082348957906135128

`sqrt(A016828(n)^5)`
-/

namespace A016834.P16082348957906135128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016828 n ^ 5 : ℝ)

end

end A016834.P16082348957906135128

namespace A016834

/-- `sqrt(A016828(n)^5)` -/
def P16082348957906135128.Spec : Prop :=
  ∀ n, P16082348957906135128.a n = (A016834 n : ℝ)

end A016834

/-! ## A016834.P3450784157049857203

`(A130824(n+1)^5)²`
-/

namespace A016834.P3450784157049857203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130824 (n + 1) ^ 5) ^ 2

end

end A016834.P3450784157049857203

namespace A016834

/-- `(A130824(n+1)^5)²` -/
def P3450784157049857203.Spec : Prop :=
  ∀ n, P3450784157049857203.a n = A016834 n

end A016834

/-! ## A016834.P3905884362118980995

`(A161718(n+1)^5)²`
-/

namespace A016834.P3905884362118980995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161718 (n + 1) ^ 5) ^ 2

end

end A016834.P3905884362118980995

namespace A016834

/-- `(A161718(n+1)^5)²` -/
def P3905884362118980995.Spec : Prop :=
  ∀ n, P3905884362118980995.a n = A016834 n

end A016834

/-! ## A016834.P12162265521423032497

`A016825(n)*A016833(n)`
-/

namespace A016834.P12162265521423032497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A016833 n

end

end A016834.P12162265521423032497

namespace A016834

/-- `A016825(n)*A016833(n)` -/
def P12162265521423032497.Spec : Prop :=
  ∀ n, P12162265521423032497.a n = A016834 n

end A016834

/-! ## A016834.P12953632984614045680

`A016826(n)*A016832(n)`
-/

namespace A016834.P12953632984614045680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n * A016832 n

end

end A016834.P12953632984614045680

namespace A016834

/-- `A016826(n)*A016832(n)` -/
def P12953632984614045680.Spec : Prop :=
  ∀ n, P12953632984614045680.a n = A016834 n

end A016834

/-! ## A016834.P15831521165391931219

`A016827(n)*A016831(n)`
-/

namespace A016834.P15831521165391931219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n * A016831 n

end

end A016834.P15831521165391931219

namespace A016834

/-- `A016827(n)*A016831(n)` -/
def P15831521165391931219.Spec : Prop :=
  ∀ n, P15831521165391931219.a n = A016834 n

end A016834

/-!
# A016835: a(n) = (4*n + 2)^11.

The programs for A016835, the canonical program `A016835.P17437227082013693094` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016835 has offset 0).

The definition of A016835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^11` (program `A016835.P17437227082013693094`, by `A016835.P17437227082013693094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016835.P17437227082013693094

`(4*n+2)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016835

/-- `(4*n+2)^11` -/
def P17437227082013693094.Spec : Prop :=
  ∀ n, (P17437227082013693094.a n : ℤ) = A016835 n

theorem P17437227082013693094.correct : P17437227082013693094.Spec := by
  intro n
  simp only [A016835]

end A016835

/-! ## A016835.P11983581930382405909

`(4*n+2)*A016829(n)²`
-/

namespace A016835.P11983581930382405909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A016829 n ^ 2

end

end A016835.P11983581930382405909

namespace A016835

/-- `(4*n+2)*A016829(n)²` -/
def P11983581930382405909.Spec : Prop :=
  ∀ n, P11983581930382405909.a n = A016835 n

end A016835

/-! ## A016835.P7078000369387958216

`A016825(n)*A016834(n)`
-/

namespace A016835.P7078000369387958216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A016834 n

end

end A016835.P7078000369387958216

namespace A016835

/-- `A016825(n)*A016834(n)` -/
def P7078000369387958216.Spec : Prop :=
  ∀ n, P7078000369387958216.a n = A016835 n

end A016835

/-! ## A016835.P7389673001827532401

`A016827(n)*A016832(n)`
-/

namespace A016835.P7389673001827532401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n * A016832 n

end

end A016835.P7389673001827532401

namespace A016835

/-- `A016827(n)*A016832(n)` -/
def P7389673001827532401.Spec : Prop :=
  ∀ n, P7389673001827532401.a n = A016835 n

end A016835

/-! ## A016835.P796403333470544433

`A016828(n)*A016831(n)`
-/

namespace A016835.P796403333470544433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 n * A016831 n

end

end A016835.P796403333470544433

namespace A016835

/-- `A016828(n)*A016831(n)` -/
def P796403333470544433.Spec : Prop :=
  ∀ n, P796403333470544433.a n = A016835 n

end A016835

/-! ## A016835.P3789032620246754282

`A016829(n)*A016830(n)`
-/

namespace A016835.P3789032620246754282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 n * A016830 n

end

end A016835.P3789032620246754282

namespace A016835

/-- `A016829(n)*A016830(n)` -/
def P3789032620246754282.Spec : Prop :=
  ∀ n, P3789032620246754282.a n = A016835 n

end A016835

/-! ## A016835.P6563616995160941152

`A016836(n)/A016825(n)`
-/

namespace A016835.P6563616995160941152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016836 n : ℚ) / (A016825 n : ℚ)

end

end A016835.P6563616995160941152

namespace A016835

/-- `A016836(n)/A016825(n)` -/
def P6563616995160941152.Spec : Prop :=
  ∀ n, P6563616995160941152.a n = (A016835 n : ℚ)

end A016835

/-! ## A016835.P1074452996485071694

`A016825(n)²*A016833(n)`
-/

namespace A016835.P1074452996485071694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n ^ 2 * A016833 n

end

end A016835.P1074452996485071694

namespace A016835

/-- `A016825(n)²*A016833(n)` -/
def P1074452996485071694.Spec : Prop :=
  ∀ n, P1074452996485071694.a n = A016835 n

end A016835

/-! ## A016835.P7366146839222980319

`A016826(n)²*A016831(n)`
-/

namespace A016835.P7366146839222980319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n ^ 2 * A016831 n

end

end A016835.P7366146839222980319

namespace A016835

/-- `A016826(n)²*A016831(n)` -/
def P7366146839222980319.Spec : Prop :=
  ∀ n, P7366146839222980319.a n = A016835 n

end A016835

/-! ## A016835.P14020052157647060528

`A016828(n)²*A016827(n)`
-/

namespace A016835.P14020052157647060528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 n ^ 2 * A016827 n

end

end A016835.P14020052157647060528

namespace A016835

/-- `A016828(n)²*A016827(n)` -/
def P14020052157647060528.Spec : Prop :=
  ∀ n, P14020052157647060528.a n = A016835 n

end A016835

/-! ## A016835.P4039887308167488303

`A016829(n)²*A016825(n)`
-/

namespace A016835.P4039887308167488303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 n ^ 2 * A016825 n

end

end A016835.P4039887308167488303

namespace A016835

/-- `A016829(n)²*A016825(n)` -/
def P4039887308167488303.Spec : Prop :=
  ∀ n, P4039887308167488303.a n = A016835 n

end A016835

/-! ## A016835.P2161470435363781191

`A016830(n)²/A016825(n)`
-/

namespace A016835.P2161470435363781191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016830 n ^ 2 : ℚ) / (A016825 n : ℚ)

end

end A016835.P2161470435363781191

namespace A016835

/-- `A016830(n)²/A016825(n)` -/
def P2161470435363781191.Spec : Prop :=
  ∀ n, P2161470435363781191.a n = (A016835 n : ℚ)

end A016835

/-! ## A016835.P5131299350207981266

`A016825(n)²²*A016831(n)`
-/

namespace A016835.P5131299350207981266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n ^ 2) ^ 2 * A016831 n

end

end A016835.P5131299350207981266

namespace A016835

/-- `A016825(n)²²*A016831(n)` -/
def P5131299350207981266.Spec : Prop :=
  ∀ n, P5131299350207981266.a n = A016835 n

end A016835

/-! ## A016835.P1273298587813712885

`A016826(n)²²*A016827(n)`
-/

namespace A016835.P1273298587813712885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016826 n ^ 2) ^ 2 * A016827 n

end

end A016835.P1273298587813712885

namespace A016835

/-- `A016826(n)²²*A016827(n)` -/
def P1273298587813712885.Spec : Prop :=
  ∀ n, P1273298587813712885.a n = A016835 n

end A016835

/-! ## A016835.P13181010348793080544

`A016827(n)²²/A016825(n)`
-/

namespace A016835.P13181010348793080544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016827 n ^ 2) ^ 2 : ℚ) / (A016825 n : ℚ)

end

end A016835.P13181010348793080544

namespace A016835

/-- `A016827(n)²²/A016825(n)` -/
def P13181010348793080544.Spec : Prop :=
  ∀ n, P13181010348793080544.a n = (A016835 n : ℚ)

end A016835

/-! ## A016835.P6913524713695448621

`A016826(n)*A016827(n)*A016830(n)`
-/

namespace A016835.P6913524713695448621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n * A016827 n * A016830 n

end

end A016835.P6913524713695448621

namespace A016835

/-- `A016826(n)*A016827(n)*A016830(n)` -/
def P6913524713695448621.Spec : Prop :=
  ∀ n, P6913524713695448621.a n = A016835 n

end A016835

/-! ## A016835.P14046660994743758199

`A016757(n)*A016825(n)*A017117(n)`
-/

namespace A016835.P14046660994743758199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 n * A016825 n * A017117 n

end

end A016835.P14046660994743758199

namespace A016835

/-- `A016757(n)*A016825(n)*A017117(n)` -/
def P14046660994743758199.Spec : Prop :=
  ∀ n, P14046660994743758199.a n = A016835 n

end A016835

/-! ## A016835.P9055802648515162372

`A016831(n)/A016827(n)*A016831(n)`
-/

namespace A016835.P9055802648515162372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016831 n : ℚ) / (A016827 n : ℚ) * (A016831 n : ℚ)

end

end A016835.P9055802648515162372

namespace A016835

/-- `A016831(n)/A016827(n)*A016831(n)` -/
def P9055802648515162372.Spec : Prop :=
  ∀ n, P9055802648515162372.a n = (A016835 n : ℚ)

end A016835

/-! ## A016835.P8870389191954922123

`A016832(n)/A016829(n)*A016832(n)`
-/

namespace A016835.P8870389191954922123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016832 n : ℚ) / (A016829 n : ℚ) * (A016832 n : ℚ)

end

end A016835.P8870389191954922123

namespace A016835

/-- `A016832(n)/A016829(n)*A016832(n)` -/
def P8870389191954922123.Spec : Prop :=
  ∀ n, P8870389191954922123.a n = (A016835 n : ℚ)

end A016835

/-! ## A016835.P17552127005716281874

`A016758(n)/A016825(n)*A017118(n)`
-/

namespace A016835.P17552127005716281874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016758 n : ℚ) / (A016825 n : ℚ) * (A017118 n : ℚ)

end

end A016835.P17552127005716281874

namespace A016835

/-- `A016758(n)/A016825(n)*A017118(n)` -/
def P17552127005716281874.Spec : Prop :=
  ∀ n, P17552127005716281874.a n = (A016835 n : ℚ)

end A016835

/-!
# A016836: a(n) = (4*n + 2)^12.

The programs for A016836, the canonical program `A016836.P6899711511514229894` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016836 has offset 0).

The definition of A016836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)^12` (program `A016836.P6899711511514229894`, by `A016836.P6899711511514229894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016836.P6899711511514229894

`(4*n+2)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016836

/-- `(4*n+2)^12` -/
def P6899711511514229894.Spec : Prop :=
  ∀ n, (P6899711511514229894.a n : ℤ) = A016836 n

theorem P6899711511514229894.correct : P6899711511514229894.Spec := by
  intro n
  simp only [A016836]

end A016836

/-! ## A016836.P12223833627088757301

`record[(lcm(2, n+1)^3)²²]`
-/

namespace A016836.P12223833627088757301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) ^ 3) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016836.P12223833627088757301

namespace A016836

/-- `record[(lcm(2, n+1)^3)²²]` -/
def P12223833627088757301.Spec : Prop :=
  ∀ n, (P12223833627088757301.a n : ℤ) = A016836 n

end A016836

/-! ## A016836.P12432215053886045562

`A016830(n)²`
-/

namespace A016836.P12432215053886045562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016830 n ^ 2

end

end A016836.P12432215053886045562

namespace A016836

/-- `A016830(n)²` -/
def P12432215053886045562.Spec : Prop :=
  ∀ n, P12432215053886045562.a n = A016836 n

end A016836

/-! ## A016836.P6502411532110118632

`A016828(n)*A016832(n)`
-/

namespace A016836.P6502411532110118632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 n * A016832 n

end

end A016836.P6502411532110118632

namespace A016836

/-- `A016828(n)*A016832(n)` -/
def P6502411532110118632.Spec : Prop :=
  ∀ n, P6502411532110118632.a n = A016836 n

end A016836

/-! ## A016836.P3356228410642004583

`A016829(n)*A016831(n)`
-/

namespace A016836.P3356228410642004583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 n * A016831 n

end

end A016836.P3356228410642004583

namespace A016836

/-- `A016829(n)*A016831(n)` -/
def P3356228410642004583.Spec : Prop :=
  ∀ n, P3356228410642004583.a n = A016836 n

end A016836

/-! ## A016836.P17852653468121033160

`Δ[A000466(n)²]²²`
-/

namespace A016836.P17852653468121033160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016836.P17852653468121033160

namespace A016836

/-- `Δ[A000466(n)²]²²` -/
def P17852653468121033160.Spec : Prop :=
  ∀ n, P17852653468121033160.a n = A016836 n

end A016836

/-! ## A016836.P15927340361972091638

`A008456(2*(2*n+1))`
-/

namespace A016836.P15927340361972091638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * (2 * n + 1))

end

end A016836.P15927340361972091638

namespace A016836

/-- `A008456(2*(2*n+1))` -/
def P15927340361972091638.Spec : Prop :=
  ∀ n, P15927340361972091638.a n = A016836 n

end A016836

/-! ## A016836.P18387779254915470912

`A017118(∑[2*2*n])`
-/

namespace A016836.P18387779254915470912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016836.P18387779254915470912

namespace A016836

/-- `A017118(∑[2*2*n])` -/
def P18387779254915470912.Spec : Prop :=
  ∀ n, P18387779254915470912.a n = A016836 n

end A016836

/-!
# A016837: Primes reached after k iterations of sum of n and its prime divisors = t (where t replaces n in each iteration).

The programs for A016837, there is no canonical definition to state claims against.
-/

/-! ## A016837.P7343233771900070324

`A282795(A001414(n+2)+n+2)`
-/

namespace A016837.P7343233771900070324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A001414 (n + 2) + (n + 2 : ℤ)).toNat

end

end A016837.P7343233771900070324

/-! ## A016837.P11435852598423481387

`A282795(A066560(n+2))`
-/

namespace A016837.P11435852598423481387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A066560 (n + 2)).toNat

end

end A016837.P11435852598423481387

/-! ## A016837.P12082326893422155764

`A282795(A075254(n+2))`
-/

namespace A016837.P12082326893422155764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A075254 (n + 2)).toNat

end

end A016837.P12082326893422155764

/-! ## A016837.P7771996927430010603

`A282795(A143545(n+2))`
-/

namespace A016837.P7771996927430010603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A143545 (n + 2)).toNat

end

end A016837.P7771996927430010603

/-! ## A016837.P148156309039298830

`p?[A282795(A075254(A028310(n)))]`
-/

namespace A016837.P148156309039298830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A075254 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A016837.P148156309039298830

/-!
# A016838: a(n) = (4n + 3)^2.

The programs for A016838, the canonical program `A016838.P1946869396513697861` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016838 has offset 0).

The definition of A016838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)²` (program `A016838.P1946869396513697861`, by `A016838.P1946869396513697861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016838.P1946869396513697861

`(4*n+3)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016838

/-- `(4*n+3)²` -/
def P1946869396513697861.Spec : Prop :=
  ∀ n, (P1946869396513697861.a n : ℤ) = A016838 n

theorem P1946869396513697861.correct : P1946869396513697861.Spec := by
  intro n
  simp only [A016838]

end A016838

/-! ## A016838.P14828137904744801199

`A016754(2*n+1)`
-/

namespace A016838.P14828137904744801199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (2 * n + 1)

end

end A016838.P14828137904744801199

namespace A016838

/-- `A016754(2*n+1)` -/
def P14828137904744801199.Spec : Prop :=
  ∀ n, P14828137904744801199.a n = A016838 n

end A016838

/-! ## A016838.P16642484907953595858

`record[xor(3, n)²]`
-/

namespace A016838.P16642484907953595858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P16642484907953595858

namespace A016838

/-- `record[xor(3, n)²]` -/
def P16642484907953595858.Spec : Prop :=
  ∀ n, (P16642484907953595858.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P1879090265939032482

`record[xor(3, n)^2]`
-/

namespace A016838.P1879090265939032482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P1879090265939032482

namespace A016838

/-- `record[xor(3, n)^2]` -/
def P1879090265939032482.Spec : Prop :=
  ∀ n, (P1879090265939032482.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P2323248295311961973

`record[(lcm(2, n)-3)²]`
-/

namespace A016838.P2323248295311961973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P2323248295311961973

namespace A016838

/-- `record[(lcm(2, n)-3)²]` -/
def P2323248295311961973.Spec : Prop :=
  ∀ n, P2323248295311961973.a n = A016838 n

end A016838

/-! ## A016838.P10202414416709720713

`record[gcd(n, or(3, n))²]`
-/

namespace A016838.P10202414416709720713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P10202414416709720713

namespace A016838

/-- `record[gcd(n, or(3, n))²]` -/
def P10202414416709720713.Spec : Prop :=
  ∀ n, (P10202414416709720713.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P4624334963600005809

`or(1, or(3, 4*n)²)`
-/

namespace A016838.P4624334963600005809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 3 (4 * n) ^ 2)

end

end A016838.P4624334963600005809

namespace A016838

/-- `or(1, or(3, 4*n)²)` -/
def P4624334963600005809.Spec : Prop :=
  ∀ n, (P4624334963600005809.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P4868163590837924511

`record[(n+3)*xor(3, n)]`
-/

namespace A016838.P4868163590837924511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P4868163590837924511

namespace A016838

/-- `record[(n+3)*xor(3, n)]` -/
def P4868163590837924511.Spec : Prop :=
  ∀ n, (P4868163590837924511.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P1381653416702239151

`∑[a(n-1)+32]` with `a(0)=9, a(1)=40`
-/

namespace A016838.P1381653416702239151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 40] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016838.P1381653416702239151

namespace A016838

/-- `∑[a(n-1)+32]` -/
def P1381653416702239151.Spec : Prop :=
  ∀ n, (P1381653416702239151.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P9849489956249005566

`record[or(n, (n+3)%4)²]`
-/

namespace A016838.P9849489956249005566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((n + 3) % 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P9849489956249005566

namespace A016838

/-- `record[or(n, (n+3)%4)²]` -/
def P9849489956249005566.Spec : Prop :=
  ∀ n, (P9849489956249005566.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P3218336806563815216

`Δ[C(2*n+1, 2)]^2`
-/

namespace A016838.P3218336806563815216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A016838.P3218336806563815216

namespace A016838

/-- `Δ[C(2*n+1, 2)]^2` -/
def P3218336806563815216.Spec : Prop :=
  ∀ n, P3218336806563815216.a n = A016838 n

end A016838

/-! ## A016838.P4998905302147560551

`record[(1-abs(4*(1-n)))²]`
-/

namespace A016838.P4998905302147560551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |4 * (1 - (n : ℤ))|) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016838.P4998905302147560551

namespace A016838

/-- `record[(1-abs(4*(1-n)))²]` -/
def P4998905302147560551.Spec : Prop :=
  ∀ n, P4998905302147560551.a n = A016838 n

end A016838

/-! ## A016838.P8511681235220390948

`xor(2, Δ[(2*n)²])²/4`
-/

namespace A016838.P8511681235220390948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ) / 4

end

end A016838.P8511681235220390948

namespace A016838

/-- `xor(2, Δ[(2*n)²])²/4` -/
def P8511681235220390948.Spec : Prop :=
  ∀ n, P8511681235220390948.a n = (A016838 n : ℚ)

end A016838

/-! ## A016838.P10236129040183606076

`∑[ogf((8+24x)/(1-2x+x^2))]+1`
-/

namespace A016838.P10236129040183606076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 24] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016838.P10236129040183606076

namespace A016838

/-- `∑[ogf((8+24x)/(1-2x+x^2))]+1` -/
def P10236129040183606076.Spec : Prop :=
  ∀ n, P10236129040183606076.a n = A016838 n

end A016838

/-! ## A016838.P12886250196078727804

`4*(∑[or(2, 8*n)]-1)+5`
-/

namespace A016838.P12886250196078727804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) + 5

end

end A016838.P12886250196078727804

namespace A016838

/-- `4*(∑[or(2, 8*n)]-1)+5` -/
def P12886250196078727804.Spec : Prop :=
  ∀ n, P12886250196078727804.a n = A016838 n

end A016838

/-! ## A016838.P8703224279214264500

`lcm(2*n+1, 8*(n+1))+1`
-/

namespace A016838.P8703224279214264500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (8 * (n + 1)) + 1

end

end A016838.P8703224279214264500

namespace A016838

/-- `lcm(2*n+1, 8*(n+1))+1` -/
def P8703224279214264500.Spec : Prop :=
  ∀ n, (P8703224279214264500.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P10306993037765814900

`or(1, (2*n+1)*8*(n+1))`
-/

namespace A016838.P10306993037765814900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (8 * (n + 1)))

end

end A016838.P10306993037765814900

namespace A016838

/-- `or(1, (2*n+1)*8*(n+1))` -/
def P10306993037765814900.Spec : Prop :=
  ∀ n, (P10306993037765814900.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P1315602153068729052

`xor(1, (2*n+1)*8*(n+1))`
-/

namespace A016838.P1315602153068729052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) * (8 * (n + 1)))

end

end A016838.P1315602153068729052

namespace A016838

/-- `xor(1, (2*n+1)*8*(n+1))` -/
def P1315602153068729052.Spec : Prop :=
  ∀ n, (P1315602153068729052.a n : ℤ) = A016838 n

end A016838

/-! ## A016838.P2095443240606895025

`ceil((2*n+1)/acot(8*(n+1)))`
-/

namespace A016838.P2095443240606895025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (8 * (n + 1) : ℝ)⌉

end

end A016838.P2095443240606895025

namespace A016838

/-- `ceil((2*n+1)/acot(8*(n+1)))` -/
def P2095443240606895025.Spec : Prop :=
  ∀ n, P2095443240606895025.a n = A016838 n

end A016838

/-!
# A016839: a(n) = (4*n+3)^3.

The programs for A016839, the canonical program `A016839.P3814509805116361627` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016839 has offset 0).

The definition of A016839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^3` (program `A016839.P3814509805116361627`, by `A016839.P3814509805116361627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016839.P3814509805116361627

`(4*n+3)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016839

/-- `(4*n+3)^3` -/
def P3814509805116361627.Spec : Prop :=
  ∀ n, (P3814509805116361627.a n : ℤ) = A016839 n

theorem P3814509805116361627.correct : P3814509805116361627.Spec := by
  intro n
  simp only [A016839]

end A016839

/-! ## A016839.P12718666437509462719

`record[xor(3, n)^3]`
-/

namespace A016839.P12718666437509462719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P12718666437509462719

namespace A016839

/-- `record[xor(3, n)^3]` -/
def P12718666437509462719.Spec : Prop :=
  ∀ n, (P12718666437509462719.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P14992561351221554084

`root(record[xor(3, n)], 1/3)`
-/

namespace A016839.P14992561351221554084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A016839.P14992561351221554084

namespace A016839

/-- `root(record[xor(3, n)], 1/3)` -/
def P14992561351221554084.Spec : Prop :=
  ∀ n, P14992561351221554084.a n = (A016839 n : ℝ)

end A016839

/-! ## A016839.P17583829253761818828

`record[or(3, lcm(2, n))^3]`
-/

namespace A016839.P17583829253761818828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (Nat.lcm 2 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P17583829253761818828

namespace A016839

/-- `record[or(3, lcm(2, n))^3]` -/
def P17583829253761818828.Spec : Prop :=
  ∀ n, (P17583829253761818828.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P4962346107022574229

`record[or(3, n)^gcd(3, n)]`
-/

namespace A016839.P4962346107022574229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n ^ Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P4962346107022574229

namespace A016839

/-- `record[or(3, n)^gcd(3, n)]` -/
def P4962346107022574229.Spec : Prop :=
  ∀ n, (P4962346107022574229.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P1553754078263004452

`record[(n+3)*xor(3, n)²]`
-/

namespace A016839.P1553754078263004452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 3 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P1553754078263004452

namespace A016839

/-- `record[(n+3)*xor(3, n)²]` -/
def P1553754078263004452.Spec : Prop :=
  ∀ n, (P1553754078263004452.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P6959299514520230167

`record[(n+3)^and(3, 3-n)]`
-/

namespace A016839.P6959299514520230167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (Int.land 3 (3 - (n : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P6959299514520230167

namespace A016839

/-- `record[(n+3)^and(3, 3-n)]` -/
def P6959299514520230167.Spec : Prop :=
  ∀ n, P6959299514520230167.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P16433856388960756895

`record[or(3, n)^4/(n+3)]`
-/

namespace A016839.P16433856388960756895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n ^ 4 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P16433856388960756895

namespace A016839

/-- `record[or(3, n)^4/(n+3)]` -/
def P16433856388960756895.Spec : Prop :=
  ∀ n, P16433856388960756895.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P16421631101424266680

`record[(n+3)^(or(3, n)-n)]`
-/

namespace A016839.P16421631101424266680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ ((Nat.lor 3 n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P16421631101424266680

namespace A016839

/-- `record[(n+3)^(or(3, n)-n)]` -/
def P16421631101424266680.Spec : Prop :=
  ∀ n, P16421631101424266680.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P6759199596585358633

`record[or(3, n)²²/(n+3)]`
-/

namespace A016839.P6759199596585358633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n ^ 2) ^ 2 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P6759199596585358633

namespace A016839

/-- `record[or(3, n)²²/(n+3)]` -/
def P6759199596585358633.Spec : Prop :=
  ∀ n, P6759199596585358633.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P548138783251905677

`record[xor(3, n)²²/(n+3)]`
-/

namespace A016839.P548138783251905677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n ^ 2) ^ 2 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P548138783251905677

namespace A016839

/-- `record[xor(3, n)²²/(n+3)]` -/
def P548138783251905677.Spec : Prop :=
  ∀ n, P548138783251905677.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P4071832231845985111

`record[xor(3, n)²]*record[xor(3, n)]`
-/

namespace A016839.P4071832231845985111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A016839.P4071832231845985111

namespace A016839

/-- `record[xor(3, n)²]*record[xor(3, n)]` -/
def P4071832231845985111.Spec : Prop :=
  ∀ n, (P4071832231845985111.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P17187253125375319867

`record[(gcd(4, n+2)+n+1)^3]`
-/

namespace A016839.P17187253125375319867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 2) + (n + 1)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P17187253125375319867

namespace A016839

/-- `record[(gcd(4, n+2)+n+1)^3]` -/
def P17187253125375319867.Spec : Prop :=
  ∀ n, (P17187253125375319867.a n : ℤ) = A016839 n

end A016839

/-! ## A016839.P9202091269877172048

`record[-(-(n+3))^and(3, n+3)]`
-/

namespace A016839.P9202091269877172048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n + 3 : ℤ)) ^ Nat.land 3 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016839.P9202091269877172048

namespace A016839

/-- `record[-(-(n+3))^and(3, n+3)]` -/
def P9202091269877172048.Spec : Prop :=
  ∀ n, P9202091269877172048.a n = A016839 n

end A016839

/-! ## A016839.P15314092861607781954

`sqrt(A016842(n))`
-/

namespace A016839.P15314092861607781954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016842 n : ℝ)

end

end A016839.P15314092861607781954

namespace A016839

/-- `sqrt(A016842(n))` -/
def P15314092861607781954.Spec : Prop :=
  ∀ n, P15314092861607781954.a n = (A016839 n : ℝ)

end A016839

/-! ## A016839.P16759053836728001548

`A017139(n)/8`
-/

namespace A016839.P16759053836728001548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017139 n : ℚ) / 8

end

end A016839.P16759053836728001548

namespace A016839

/-- `A017139(n)/8` -/
def P16759053836728001548.Spec : Prop :=
  ∀ n, P16759053836728001548.a n = (A016839 n : ℚ)

end A016839

/-! ## A016839.P15770198036804057826

`sqrt(sqrt(A016848(n)))`
-/

namespace A016839.P15770198036804057826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016848 n : ℝ))

end

end A016839.P15770198036804057826

namespace A016839

/-- `sqrt(sqrt(A016848(n)))` -/
def P15770198036804057826.Spec : Prop :=
  ∀ n, P15770198036804057826.a n = (A016839 n : ℝ)

end A016839

/-! ## A016839.P17969242837469719441

`sqrt(A016838(n)^3)`
-/

namespace A016839.P17969242837469719441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016838 n ^ 3 : ℝ)

end

end A016839.P17969242837469719441

namespace A016839

/-- `sqrt(A016838(n)^3)` -/
def P17969242837469719441.Spec : Prop :=
  ∀ n, P17969242837469719441.a n = (A016839 n : ℝ)

end A016839

/-! ## A016839.P15358247347465743655

`A004767(n)*A016838(n)`
-/

namespace A016839.P15358247347465743655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016838 n

end

end A016839.P15358247347465743655

namespace A016839

/-- `A004767(n)*A016838(n)` -/
def P15358247347465743655.Spec : Prop :=
  ∀ n, P15358247347465743655.a n = A016839 n

end A016839

/-! ## A016839.P3542167083594885785

`A016840(n)/A004767(n)`
-/

namespace A016839.P3542167083594885785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016840 n : ℚ) / (A004767 n : ℚ)

end

end A016839.P3542167083594885785

namespace A016839

/-- `A016840(n)/A004767(n)` -/
def P3542167083594885785.Spec : Prop :=
  ∀ n, P3542167083594885785.a n = (A016839 n : ℚ)

end A016839

/-!
# A016840: a(n) = (4*n+3)^4.

The programs for A016840, the canonical program `A016840.P5994882750815029548` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016840 has offset 0).

The definition of A016840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^4` (program `A016840.P5994882750815029548`, by `A016840.P5994882750815029548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016840.P5994882750815029548

`(4*n+3)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016840

/-- `(4*n+3)^4` -/
def P5994882750815029548.Spec : Prop :=
  ∀ n, (P5994882750815029548.a n : ℤ) = A016840 n

theorem P5994882750815029548.correct : P5994882750815029548.Spec := by
  intro n
  simp only [A016840]

end A016840

/-! ## A016840.P6586780193217905280

`record[xor(3, n)^4]`
-/

namespace A016840.P6586780193217905280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P6586780193217905280

namespace A016840

/-- `record[xor(3, n)^4]` -/
def P6586780193217905280.Spec : Prop :=
  ∀ n, (P6586780193217905280.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P6959956314477974108

`record[xor(3, n)²²]`
-/

namespace A016840.P6959956314477974108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P6959956314477974108

namespace A016840

/-- `record[xor(3, n)²²]` -/
def P6959956314477974108.Spec : Prop :=
  ∀ n, (P6959956314477974108.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P10484064986928860573

`or(3, 4*n)²²`
-/

namespace A016840.P10484064986928860573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) ^ 2) ^ 2

end

end A016840.P10484064986928860573

namespace A016840

/-- `or(3, 4*n)²²` -/
def P10484064986928860573.Spec : Prop :=
  ∀ n, (P10484064986928860573.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P17140618612370827054

`xor(3, 4*n)²²`
-/

namespace A016840.P17140618612370827054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * n) ^ 2) ^ 2

end

end A016840.P17140618612370827054

namespace A016840

/-- `xor(3, 4*n)²²` -/
def P17140618612370827054.Spec : Prop :=
  ∀ n, (P17140618612370827054.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P1795066982870201574

`record[(lcm(2, n)-3)^4]`
-/

namespace A016840.P1795066982870201574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) - 3) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P1795066982870201574

namespace A016840

/-- `record[(lcm(2, n)-3)^4]` -/
def P1795066982870201574.Spec : Prop :=
  ∀ n, P1795066982870201574.a n = A016840 n

end A016840

/-! ## A016840.P928034016480782985

`record[(n+3)^gcd(4, n)]`
-/

namespace A016840.P928034016480782985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P928034016480782985

namespace A016840

/-- `record[(n+3)^gcd(4, n)]` -/
def P928034016480782985.Spec : Prop :=
  ∀ n, (P928034016480782985.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P16887538249898918133

`root(or(3, 4*n), 1/4)`
-/

namespace A016840.P16887538249898918133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ))

end

end A016840.P16887538249898918133

namespace A016840

/-- `root(or(3, 4*n), 1/4)` -/
def P16887538249898918133.Spec : Prop :=
  ∀ n, P16887538249898918133.a n = (A016840 n : ℝ)

end A016840

/-! ## A016840.P3578030269456964870

`lt[1, val(n+1, 2)]²²`
-/

namespace A016840.P3578030269456964870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016840.P3578030269456964870

namespace A016840

/-- `lt[1, val(n+1, 2)]²²` -/
def P3578030269456964870.Spec : Prop :=
  ∀ n, (P3578030269456964870.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P10688072558627408300

`eq[1, val(n+3, 2)]²²`
-/

namespace A016840.P10688072558627408300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2

end

end A016840.P10688072558627408300

namespace A016840

/-- `eq[1, val(n+3, 2)]²²` -/
def P10688072558627408300.Spec : Prop :=
  ∀ n, (P10688072558627408300.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P10487451244992502964

`lt[3, xor(n, n+1)]²²`
-/

namespace A016840.P10487451244992502964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016840.P10487451244992502964

namespace A016840

/-- `lt[3, xor(n, n+1)]²²` -/
def P10487451244992502964.Spec : Prop :=
  ∀ n, (P10487451244992502964.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P17833820147916227308

`lt[xor(3, n), n-1]²²`
-/

namespace A016840.P17833820147916227308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A016840.P17833820147916227308

namespace A016840

/-- `lt[xor(3, n), n-1]²²` -/
def P17833820147916227308.Spec : Prop :=
  ∀ n, (P17833820147916227308.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P15880838810417443988

`eq[3, xor(n, n-3)]²²`
-/

namespace A016840.P15880838810417443988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016840.P15880838810417443988

namespace A016840

/-- `eq[3, xor(n, n-3)]²²` -/
def P15880838810417443988.Spec : Prop :=
  ∀ n, (P15880838810417443988.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P4211756310618040934

`eq[n, or(n, n-3)]²²`
-/

namespace A016840.P4211756310618040934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016840.P4211756310618040934

namespace A016840

/-- `eq[n, or(n, n-3)]²²` -/
def P4211756310618040934.Spec : Prop :=
  ∀ n, (P4211756310618040934.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P7633360295160323196

`Δ[C(2*n+1, 2)]²²`
-/

namespace A016840.P7633360295160323196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016840.P7633360295160323196

namespace A016840

/-- `Δ[C(2*n+1, 2)]²²` -/
def P7633360295160323196.Spec : Prop :=
  ∀ n, P7633360295160323196.a n = A016840 n

end A016840

/-! ## A016840.P3815419062203413874

`record[(n+3)^(4-and(3, n))]`
-/

namespace A016840.P3815419062203413874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (4 - (Nat.land 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P3815419062203413874

namespace A016840

/-- `record[(n+3)^(4-and(3, n))]` -/
def P3815419062203413874.Spec : Prop :=
  ∀ n, P3815419062203413874.a n = (A016840 n : ℚ)

end A016840

/-! ## A016840.P9064834999961692920

`record[or(3, n)^5/(n+3)]`
-/

namespace A016840.P9064834999961692920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n ^ 5 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016840.P9064834999961692920

namespace A016840

/-- `record[or(3, n)^5/(n+3)]` -/
def P9064834999961692920.Spec : Prop :=
  ∀ n, P9064834999961692920.a n = (A016840 n : ℚ)

end A016840

/-! ## A016840.P3281010019636682095

`(C(n, 2)-∑[n+3])²²`
-/

namespace A016840.P3281010019636682095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.choose n 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2) ^ 2

end

end A016840.P3281010019636682095

namespace A016840

/-- `(C(n, 2)-∑[n+3])²²` -/
def P3281010019636682095.Spec : Prop :=
  ∀ n, P3281010019636682095.a n = A016840 n

end A016840

/-! ## A016840.P2440085547702413025

`eq[1, and(n-2, -n)]²²`
-/

namespace A016840.P2440085547702413025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016840.P2440085547702413025

namespace A016840

/-- `eq[1, and(n-2, -n)]²²` -/
def P2440085547702413025.Spec : Prop :=
  ∀ n, (P2440085547702413025.a n : ℤ) = A016840 n

end A016840

/-! ## A016840.P8998009210510674935

`lt[1, and(n, -(n+2))]²²`
-/

namespace A016840.P8998009210510674935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A016840.P8998009210510674935

namespace A016840

/-- `lt[1, and(n, -(n+2))]²²` -/
def P8998009210510674935.Spec : Prop :=
  ∀ n, (P8998009210510674935.a n : ℤ) = A016840 n

end A016840

/-!
# A016841: a(n) = (4n+3)^5.

The programs for A016841, the canonical program `A016841.P10215383663120285149` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016841 has offset 0).

The definition of A016841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^5` (program `A016841.P10215383663120285149`, by `A016841.P10215383663120285149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016841.P10215383663120285149

`(4*n+3)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016841

/-- `(4*n+3)^5` -/
def P10215383663120285149.Spec : Prop :=
  ∀ n, (P10215383663120285149.a n : ℤ) = A016841 n

theorem P10215383663120285149.correct : P10215383663120285149.Spec := by
  intro n
  simp only [A016841]

end A016841

/-! ## A016841.P2934999044370020827

`record[xor(3, n)^5]`
-/

namespace A016841.P2934999044370020827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P2934999044370020827

namespace A016841

/-- `record[xor(3, n)^5]` -/
def P2934999044370020827.Spec : Prop :=
  ∀ n, (P2934999044370020827.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P2008312037805652538

`root(record[xor(3, n)], 1/5)`
-/

namespace A016841.P2008312037805652538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ))

end

end A016841.P2008312037805652538

namespace A016841

/-- `root(record[xor(3, n)], 1/5)` -/
def P2008312037805652538.Spec : Prop :=
  ∀ n, P2008312037805652538.a n = (A016841 n : ℝ)

end A016841

/-! ## A016841.P10701410611022303633

`record[or(3, lcm(2, n))^5]`
-/

namespace A016841.P10701410611022303633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (Nat.lcm 2 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P10701410611022303633

namespace A016841

/-- `record[or(3, lcm(2, n))^5]` -/
def P10701410611022303633.Spec : Prop :=
  ∀ n, (P10701410611022303633.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P764086920489428318

`record[gcd(n, or(3, n))^5]`
-/

namespace A016841.P764086920489428318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 3 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P764086920489428318

namespace A016841

/-- `record[gcd(n, or(3, n))^5]` -/
def P764086920489428318.Spec : Prop :=
  ∀ n, (P764086920489428318.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P13471752088822200945

`root(or(3, 4*n), 1/5)`
-/

namespace A016841.P13471752088822200945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ))

end

end A016841.P13471752088822200945

namespace A016841

/-- `root(or(3, 4*n), 1/5)` -/
def P13471752088822200945.Spec : Prop :=
  ∀ n, P13471752088822200945.a n = (A016841 n : ℝ)

end A016841

/-! ## A016841.P6812691910780092459

`record[(n+3)*xor(3, n)²²]`
-/

namespace A016841.P6812691910780092459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (Nat.xor 3 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P6812691910780092459

namespace A016841

/-- `record[(n+3)*xor(3, n)²²]` -/
def P6812691910780092459.Spec : Prop :=
  ∀ n, (P6812691910780092459.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P9491881177915208743

`record[(gcd(4, n+2)+n+1)^5]`
-/

namespace A016841.P9491881177915208743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 2) + (n + 1)) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P9491881177915208743

namespace A016841

/-- `record[(gcd(4, n+2)+n+1)^5]` -/
def P9491881177915208743.Spec : Prop :=
  ∀ n, (P9491881177915208743.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P6096542273773333578

`sqrt(A016846(n))`
-/

namespace A016841.P6096542273773333578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016846 n : ℝ)

end

end A016841.P6096542273773333578

namespace A016841

/-- `sqrt(A016846(n))` -/
def P6096542273773333578.Spec : Prop :=
  ∀ n, P6096542273773333578.a n = (A016841 n : ℝ)

end A016841

/-! ## A016841.P1859309837039160598

`sqrt(A016838(n)^5)`
-/

namespace A016841.P1859309837039160598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016838 n ^ 5 : ℝ)

end

end A016841.P1859309837039160598

namespace A016841

/-- `sqrt(A016838(n)^5)` -/
def P1859309837039160598.Spec : Prop :=
  ∀ n, P1859309837039160598.a n = (A016841 n : ℝ)

end A016841

/-! ## A016841.P2077015412657660908

`record[A322469(n+1)^5]`
-/

namespace A016841.P2077015412657660908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322469 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016841.P2077015412657660908

namespace A016841

/-- `record[A322469(n+1)^5]` -/
def P2077015412657660908.Spec : Prop :=
  ∀ n, P2077015412657660908.a n = A016841 n

end A016841

/-! ## A016841.P8385055702890571013

`A004767(n)*A016840(n)`
-/

namespace A016841.P8385055702890571013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016840 n

end

end A016841.P8385055702890571013

namespace A016841

/-- `A004767(n)*A016840(n)` -/
def P8385055702890571013.Spec : Prop :=
  ∀ n, P8385055702890571013.a n = A016841 n

end A016841

/-! ## A016841.P13232493576053095236

`A016838(n)*A016839(n)`
-/

namespace A016841.P13232493576053095236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016839 n

end

end A016841.P13232493576053095236

namespace A016841

/-- `A016838(n)*A016839(n)` -/
def P13232493576053095236.Spec : Prop :=
  ∀ n, P13232493576053095236.a n = A016841 n

end A016841

/-! ## A016841.P10892027790685188757

`A016842(n)/A004767(n)`
-/

namespace A016841.P10892027790685188757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016842 n : ℚ) / (A004767 n : ℚ)

end

end A016841.P10892027790685188757

namespace A016841

/-- `A016842(n)/A004767(n)` -/
def P10892027790685188757.Spec : Prop :=
  ∀ n, P10892027790685188757.a n = (A016841 n : ℚ)

end A016841

/-! ## A016841.P12566020997487436099

`A016843(n)/A016838(n)`
-/

namespace A016841.P12566020997487436099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016843 n : ℚ) / (A016838 n : ℚ)

end

end A016841.P12566020997487436099

namespace A016841

/-- `A016843(n)/A016838(n)` -/
def P12566020997487436099.Spec : Prop :=
  ∀ n, P12566020997487436099.a n = (A016841 n : ℚ)

end A016841

/-! ## A016841.P4614988392736882476

`A016845(n)/A016840(n)`
-/

namespace A016841.P4614988392736882476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 n : ℚ) / (A016840 n : ℚ)

end

end A016841.P4614988392736882476

namespace A016841

/-- `A016845(n)/A016840(n)` -/
def P4614988392736882476.Spec : Prop :=
  ∀ n, P4614988392736882476.a n = (A016841 n : ℚ)

end A016841

/-! ## A016841.P2748667361661139998

`A016847(n)/A016842(n)`
-/

namespace A016841.P2748667361661139998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / (A016842 n : ℚ)

end

end A016841.P2748667361661139998

namespace A016841

/-- `A016847(n)/A016842(n)` -/
def P2748667361661139998.Spec : Prop :=
  ∀ n, P2748667361661139998.a n = (A016841 n : ℚ)

end A016841

/-! ## A016841.P7862629981289367302

`A016848(n)/A016843(n)`
-/

namespace A016841.P7862629981289367302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 n : ℚ) / (A016843 n : ℚ)

end

end A016841.P7862629981289367302

namespace A016841

/-- `A016848(n)/A016843(n)` -/
def P7862629981289367302.Spec : Prop :=
  ∀ n, P7862629981289367302.a n = (A016841 n : ℚ)

end A016841

/-! ## A016841.P6051039630831345459

`gcd(A016842(n), A017141(n))`
-/

namespace A016841.P6051039630831345459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016842 n) (A017141 n)

end

end A016841.P6051039630831345459

namespace A016841

/-- `gcd(A016842(n), A017141(n))` -/
def P6051039630831345459.Spec : Prop :=
  ∀ n, (P6051039630831345459.a n : ℤ) = A016841 n

end A016841

/-! ## A016841.P12065773399442947963

`∪[A017105(n), A017153(n)]`
-/

namespace A016841.P12065773399442947963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016841.P12065773399442947963

namespace A016841

/-- `∪[A017105(n), A017153(n)]` -/
def P12065773399442947963.Spec : Prop :=
  ∀ n, (P12065773399442947963.a n : ℤ) = A016841 n

end A016841

/-!
# A016842: a(n) = (4*n + 3)^6.

The programs for A016842, the canonical program `A016842.P16499744308022796369` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016842 has offset 0).

The definition of A016842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^6` (program `A016842.P16499744308022796369`, by `A016842.P16499744308022796369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016842.P16499744308022796369

`(4*n+3)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016842

/-- `(4*n+3)^6` -/
def P16499744308022796369.Spec : Prop :=
  ∀ n, (P16499744308022796369.a n : ℤ) = A016842 n

theorem P16499744308022796369.correct : P16499744308022796369.Spec := by
  intro n
  simp only [A016842]

end A016842

/-! ## A016842.P12214425236416017726

`record[xor(3, n)^6]`
-/

namespace A016842.P12214425236416017726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P12214425236416017726

namespace A016842

/-- `record[xor(3, n)^6]` -/
def P12214425236416017726.Spec : Prop :=
  ∀ n, (P12214425236416017726.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P4886841895269680272

`(or(3, 4*n)^3)²`
-/

namespace A016842.P4886841895269680272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) ^ 3) ^ 2

end

end A016842.P4886841895269680272

namespace A016842

/-- `(or(3, 4*n)^3)²` -/
def P4886841895269680272.Spec : Prop :=
  ∀ n, (P4886841895269680272.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P17083143818149169362

`(xor(3, 4*n)^3)²`
-/

namespace A016842.P17083143818149169362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * n) ^ 3) ^ 2

end

end A016842.P17083143818149169362

namespace A016842

/-- `(xor(3, 4*n)^3)²` -/
def P17083143818149169362.Spec : Prop :=
  ∀ n, (P17083143818149169362.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P17767747928118350717

`record[(lcm(2, n)-3)^6]`
-/

namespace A016842.P17767747928118350717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) - 3) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P17767747928118350717

namespace A016842

/-- `record[(lcm(2, n)-3)^6]` -/
def P17767747928118350717.Spec : Prop :=
  ∀ n, P17767747928118350717.a n = A016842 n

end A016842

/-! ## A016842.P15357303764465668763

`(lt[1, val(n+1, 2)]^3)²`
-/

namespace A016842.P15357303764465668763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016842.P15357303764465668763

namespace A016842

/-- `(lt[1, val(n+1, 2)]^3)²` -/
def P15357303764465668763.Spec : Prop :=
  ∀ n, (P15357303764465668763.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P9618440531104118368

`(eq[1, val(n+3, 2)]^3)²`
-/

namespace A016842.P9618440531104118368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016842.P9618440531104118368

namespace A016842

/-- `(eq[1, val(n+3, 2)]^3)²` -/
def P9618440531104118368.Spec : Prop :=
  ∀ n, (P9618440531104118368.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P730397660333520283

`record[(n+3)^(gcd(4, n)+2)]`
-/

namespace A016842.P730397660333520283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (Nat.gcd 4 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P730397660333520283

namespace A016842

/-- `record[(n+3)^(gcd(4, n)+2)]` -/
def P730397660333520283.Spec : Prop :=
  ∀ n, (P730397660333520283.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P14310894993313481302

`(lt[3, xor(n, n+1)]^3)²`
-/

namespace A016842.P14310894993313481302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016842.P14310894993313481302

namespace A016842

/-- `(lt[3, xor(n, n+1)]^3)²` -/
def P14310894993313481302.Spec : Prop :=
  ∀ n, (P14310894993313481302.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P13811215385509919201

`(lt[xor(3, n), n-1]^3)²`
-/

namespace A016842.P13811215385509919201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3) ^ 2

end

end A016842.P13811215385509919201

namespace A016842

/-- `(lt[xor(3, n), n-1]^3)²` -/
def P13811215385509919201.Spec : Prop :=
  ∀ n, (P13811215385509919201.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P5133683624540902647

`record[((n+3)*xor(3, n)²)²]`
-/

namespace A016842.P5133683624540902647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.xor 3 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P5133683624540902647

namespace A016842

/-- `record[((n+3)*xor(3, n)²)²]` -/
def P5133683624540902647.Spec : Prop :=
  ∀ n, (P5133683624540902647.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P4781306467429623319

`record[((n+3)^and(3, 3-n))²]`
-/

namespace A016842.P4781306467429623319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) ^ (Int.land 3 (3 - (n : ℤ)) : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P4781306467429623319

namespace A016842

/-- `record[((n+3)^and(3, 3-n))²]` -/
def P4781306467429623319.Spec : Prop :=
  ∀ n, P4781306467429623319.a n = (A016842 n : ℚ)

end A016842

/-! ## A016842.P13876584000547039267

`record[(n+3)^((n+3)%4)!]`
-/

namespace A016842.P13876584000547039267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.factorial ((n + 3) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P13876584000547039267

namespace A016842

/-- `record[(n+3)^((n+3)%4)!]` -/
def P13876584000547039267.Spec : Prop :=
  ∀ n, (P13876584000547039267.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P1375827313792874513

`record[(n+3)^and(3, n-1)!]`
-/

namespace A016842.P1375827313792874513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.factorial (Int.land 3 ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016842.P1375827313792874513

namespace A016842

/-- `record[(n+3)^and(3, n-1)!]` -/
def P1375827313792874513.Spec : Prop :=
  ∀ n, (P1375827313792874513.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P13596287793563534346

`(eq[n+1, lcm(4, n+1)]^3)²`
-/

namespace A016842.P13596287793563534346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016842.P13596287793563534346

namespace A016842

/-- `(eq[n+1, lcm(4, n+1)]^3)²` -/
def P13596287793563534346.Spec : Prop :=
  ∀ n, (P13596287793563534346.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P13291571907629533801

`(eq[3, xor(n+2, n+3)]^3)²`
-/

namespace A016842.P13291571907629533801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016842.P13291571907629533801

namespace A016842

/-- `(eq[3, xor(n+2, n+3)]^3)²` -/
def P13291571907629533801.Spec : Prop :=
  ∀ n, (P13291571907629533801.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P9667068247724164317

`(lt[and(n, n+1), n-1]^3)²`
-/

namespace A016842.P9667068247724164317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3) ^ 2

end

end A016842.P9667068247724164317

namespace A016842

/-- `(lt[and(n, n+1), n-1]^3)²` -/
def P9667068247724164317.Spec : Prop :=
  ∀ n, (P9667068247724164317.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P6549863650605796963

`(lt[n+2, or(n, n+1)]^3)²`
-/

namespace A016842.P6549863650605796963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016842.P6549863650605796963

namespace A016842

/-- `(lt[n+2, or(n, n+1)]^3)²` -/
def P6549863650605796963.Spec : Prop :=
  ∀ n, (P6549863650605796963.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P743325098300455420

`(eq[n+1, and(n+2, n+3)]^3)²`
-/

namespace A016842.P743325098300455420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016842.P743325098300455420

namespace A016842

/-- `(eq[n+1, and(n+2, n+3)]^3)²` -/
def P743325098300455420.Spec : Prop :=
  ∀ n, (P743325098300455420.a n : ℤ) = A016842 n

end A016842

/-! ## A016842.P1065657658813023323

`A016839(n)²`
-/

namespace A016842.P1065657658813023323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n ^ 2

end

end A016842.P1065657658813023323

namespace A016842

/-- `A016839(n)²` -/
def P1065657658813023323.Spec : Prop :=
  ∀ n, P1065657658813023323.a n = A016842 n

end A016842

/-!
# A016843: a(n) = (4n+3)^7.

The programs for A016843, the canonical program `A016843.P16205903007781834454` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016843 has offset 0).

The definition of A016843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^7` (program `A016843.P16205903007781834454`, by `A016843.P16205903007781834454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016843.P16205903007781834454

`(4*n+3)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016843

/-- `(4*n+3)^7` -/
def P16205903007781834454.Spec : Prop :=
  ∀ n, (P16205903007781834454.a n : ℤ) = A016843 n

theorem P16205903007781834454.correct : P16205903007781834454.Spec := by
  intro n
  simp only [A016843]

end A016843

/-! ## A016843.P2629772248133409640

`record[xor(3, n)^7]`
-/

namespace A016843.P2629772248133409640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016843.P2629772248133409640

namespace A016843

/-- `record[xor(3, n)^7]` -/
def P2629772248133409640.Spec : Prop :=
  ∀ n, (P2629772248133409640.a n : ℤ) = A016843 n

end A016843

/-! ## A016843.P824285654464645176

`root(record[xor(3, n)], 1/7)`
-/

namespace A016843.P824285654464645176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / ((1 : ℚ) / 7 : ℝ))

end

end A016843.P824285654464645176

namespace A016843

/-- `root(record[xor(3, n)], 1/7)` -/
def P824285654464645176.Spec : Prop :=
  ∀ n, P824285654464645176.a n = (A016843 n : ℝ)

end A016843

/-! ## A016843.P14118040176840188309

`record[or(3, lcm(2, n))^7]`
-/

namespace A016843.P14118040176840188309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (Nat.lcm 2 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016843.P14118040176840188309

namespace A016843

/-- `record[or(3, lcm(2, n))^7]` -/
def P14118040176840188309.Spec : Prop :=
  ∀ n, (P14118040176840188309.a n : ℤ) = A016843 n

end A016843

/-! ## A016843.P4087590077522417031

`record[gcd(n, or(3, n))^7]`
-/

namespace A016843.P4087590077522417031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 3 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016843.P4087590077522417031

namespace A016843

/-- `record[gcd(n, or(3, n))^7]` -/
def P4087590077522417031.Spec : Prop :=
  ∀ n, (P4087590077522417031.a n : ℤ) = A016843 n

end A016843

/-! ## A016843.P15297452169717805135

`(4*n+3)*A016842(n)`
-/

namespace A016843.P15297452169717805135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A016842 n

end

end A016843.P15297452169717805135

namespace A016843

/-- `(4*n+3)*A016842(n)` -/
def P15297452169717805135.Spec : Prop :=
  ∀ n, P15297452169717805135.a n = A016843 n

end A016843

/-! ## A016843.P2693871892849044883

`(4*n+3)²*A016841(n)`
-/

namespace A016843.P2693871892849044883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 3) ^ 2 : ℤ) * A016841 n

end

end A016843.P2693871892849044883

namespace A016843

/-- `(4*n+3)²*A016841(n)` -/
def P2693871892849044883.Spec : Prop :=
  ∀ n, P2693871892849044883.a n = A016843 n

end A016843

/-! ## A016843.P6595851737402863924

`A016839(n)*A016840(n)`
-/

namespace A016843.P6595851737402863924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n * A016840 n

end

end A016843.P6595851737402863924

namespace A016843

/-- `A016839(n)*A016840(n)` -/
def P6595851737402863924.Spec : Prop :=
  ∀ n, P6595851737402863924.a n = A016843 n

end A016843

/-! ## A016843.P17372294798236596827

`A016845(n)/A016838(n)`
-/

namespace A016843.P17372294798236596827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 n : ℚ) / (A016838 n : ℚ)

end

end A016843.P17372294798236596827

namespace A016843

/-- `A016845(n)/A016838(n)` -/
def P17372294798236596827.Spec : Prop :=
  ∀ n, P17372294798236596827.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P8024606291959584557

`A016847(n)/A016840(n)`
-/

namespace A016843.P8024606291959584557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / (A016840 n : ℚ)

end

end A016843.P8024606291959584557

namespace A016843

/-- `A016847(n)/A016840(n)` -/
def P8024606291959584557.Spec : Prop :=
  ∀ n, P8024606291959584557.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P7028497384516177013

`A016848(n)/A016841(n)`
-/

namespace A016843.P7028497384516177013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 n : ℚ) / (A016841 n : ℚ)

end

end A016843.P7028497384516177013

namespace A016843

/-- `A016848(n)/A016841(n)` -/
def P7028497384516177013.Spec : Prop :=
  ∀ n, P7028497384516177013.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P4354107786272747954

`A016839(n)²*A004767(n)`
-/

namespace A016843.P4354107786272747954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n ^ 2 * A004767 n

end

end A016843.P4354107786272747954

namespace A016843

/-- `A016839(n)²*A004767(n)` -/
def P4354107786272747954.Spec : Prop :=
  ∀ n, P4354107786272747954.a n = A016843 n

end A016843

/-! ## A016843.P8052917348239690207

`A016838(n)²*A016839(n)`
-/

namespace A016843.P8052917348239690207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n ^ 2 * A016839 n

end

end A016843.P8052917348239690207

namespace A016843

/-- `A016838(n)²*A016839(n)` -/
def P8052917348239690207.Spec : Prop :=
  ∀ n, P8052917348239690207.a n = A016843 n

end A016843

/-! ## A016843.P12435529176629809307

`A016840(n)²/A004767(n)`
-/

namespace A016843.P12435529176629809307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016840 n ^ 2 : ℚ) / (A004767 n : ℚ)

end

end A016843.P12435529176629809307

namespace A016843

/-- `A016840(n)²/A004767(n)` -/
def P12435529176629809307.Spec : Prop :=
  ∀ n, P12435529176629809307.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P6795131322909626594

`A016845(n)/A004767(n)²`
-/

namespace A016843.P6795131322909626594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 n : ℚ) / (A004767 n ^ 2 : ℚ)

end

end A016843.P6795131322909626594

namespace A016843

/-- `A016845(n)/A004767(n)²` -/
def P6795131322909626594.Spec : Prop :=
  ∀ n, P6795131322909626594.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P1669669544257692392

`A016841(n)²/A016839(n)`
-/

namespace A016843.P1669669544257692392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016841 n ^ 2 : ℚ) / (A016839 n : ℚ)

end

end A016843.P1669669544257692392

namespace A016843

/-- `A016841(n)²/A016839(n)` -/
def P1669669544257692392.Spec : Prop :=
  ∀ n, P1669669544257692392.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P17797765743665175932

`A016842(n)²/A016841(n)`
-/

namespace A016843.P17797765743665175932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016842 n ^ 2 : ℚ) / (A016841 n : ℚ)

end

end A016843.P17797765743665175932

namespace A016843

/-- `A016842(n)²/A016841(n)` -/
def P17797765743665175932.Spec : Prop :=
  ∀ n, P17797765743665175932.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P1484467965908644897

`A016847(n)/A016838(n)²`
-/

namespace A016843.P1484467965908644897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / (A016838 n ^ 2 : ℚ)

end

end A016843.P1484467965908644897

namespace A016843

/-- `A016847(n)/A016838(n)²` -/
def P1484467965908644897.Spec : Prop :=
  ∀ n, P1484467965908644897.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P7409413840474428649

`A016838(n)²²/A004767(n)`
-/

namespace A016843.P7409413840474428649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016838 n ^ 2) ^ 2 : ℚ) / (A004767 n : ℚ)

end

end A016843.P7409413840474428649

namespace A016843

/-- `A016838(n)²²/A004767(n)` -/
def P7409413840474428649.Spec : Prop :=
  ∀ n, P7409413840474428649.a n = (A016843 n : ℚ)

end A016843

/-! ## A016843.P6374538342518644447

`A004767(n)*A016838(n)*A016840(n)`
-/

namespace A016843.P6374538342518644447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016838 n * A016840 n

end

end A016843.P6374538342518644447

namespace A016843

/-- `A004767(n)*A016838(n)*A016840(n)` -/
def P6374538342518644447.Spec : Prop :=
  ∀ n, P6374538342518644447.a n = A016843 n

end A016843

/-!
# A016844: a(n) = (4n+3)^8.

The programs for A016844, the canonical program `A016844.P8533359676361553551` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016844 has offset 0).

The definition of A016844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^8` (program `A016844.P8533359676361553551`, by `A016844.P8533359676361553551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016844.P8533359676361553551

`(4*n+3)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016844

/-- `(4*n+3)^8` -/
def P8533359676361553551.Spec : Prop :=
  ∀ n, (P8533359676361553551.a n : ℤ) = A016844 n

theorem P8533359676361553551.correct : P8533359676361553551.Spec := by
  intro n
  simp only [A016844]

end A016844

/-! ## A016844.P12905206480804995236

`record[xor(3, n)^8]`
-/

namespace A016844.P12905206480804995236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016844.P12905206480804995236

namespace A016844

/-- `record[xor(3, n)^8]` -/
def P12905206480804995236.Spec : Prop :=
  ∀ n, (P12905206480804995236.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P17456891049170404194

`record[xor(3, n)²²²]`
-/

namespace A016844.P17456891049170404194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016844.P17456891049170404194

namespace A016844

/-- `record[xor(3, n)²²²]` -/
def P17456891049170404194.Spec : Prop :=
  ∀ n, (P17456891049170404194.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P3274825257625844365

`(or(3, 4*n)^4)²`
-/

namespace A016844.P3274825257625844365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) ^ 4) ^ 2

end

end A016844.P3274825257625844365

namespace A016844

/-- `(or(3, 4*n)^4)²` -/
def P3274825257625844365.Spec : Prop :=
  ∀ n, (P3274825257625844365.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P5262795521171977760

`(xor(3, 4*n)^4)²`
-/

namespace A016844.P5262795521171977760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * n) ^ 4) ^ 2

end

end A016844.P5262795521171977760

namespace A016844

/-- `(xor(3, 4*n)^4)²` -/
def P5262795521171977760.Spec : Prop :=
  ∀ n, (P5262795521171977760.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P10669125279852820770

`or(3, 4*n)²²²`
-/

namespace A016844.P10669125279852820770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016844.P10669125279852820770

namespace A016844

/-- `or(3, 4*n)²²²` -/
def P10669125279852820770.Spec : Prop :=
  ∀ n, (P10669125279852820770.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P11331146667693038007

`xor(3, 4*n)²²²`
-/

namespace A016844.P11331146667693038007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (4 * n) ^ 2) ^ 2) ^ 2

end

end A016844.P11331146667693038007

namespace A016844

/-- `xor(3, 4*n)²²²` -/
def P11331146667693038007.Spec : Prop :=
  ∀ n, (P11331146667693038007.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P17124926159431703942

`record[((n+3)^gcd(4, n))²]`
-/

namespace A016844.P17124926159431703942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.gcd 4 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016844.P17124926159431703942

namespace A016844

/-- `record[((n+3)^gcd(4, n))²]` -/
def P17124926159431703942.Spec : Prop :=
  ∀ n, (P17124926159431703942.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P7458097229301111071

`(lt[1, val(n+1, 2)]^4)²`
-/

namespace A016844.P7458097229301111071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016844.P7458097229301111071

namespace A016844

/-- `(lt[1, val(n+1, 2)]^4)²` -/
def P7458097229301111071.Spec : Prop :=
  ∀ n, (P7458097229301111071.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P10041336984230732731

`(eq[1, val(n+3, 2)]^4)²`
-/

namespace A016844.P10041336984230732731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4) ^ 2

end

end A016844.P10041336984230732731

namespace A016844

/-- `(eq[1, val(n+3, 2)]^4)²` -/
def P10041336984230732731.Spec : Prop :=
  ∀ n, (P10041336984230732731.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P14941712237379710736

`lt[1, val(n+1, 2)]²²²`
-/

namespace A016844.P14941712237379710736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016844.P14941712237379710736

namespace A016844

/-- `lt[1, val(n+1, 2)]²²²` -/
def P14941712237379710736.Spec : Prop :=
  ∀ n, (P14941712237379710736.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P16321761502122743716

`eq[1, val(n+3, 2)]²²²`
-/

namespace A016844.P16321761502122743716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2) ^ 2

end

end A016844.P16321761502122743716

namespace A016844

/-- `eq[1, val(n+3, 2)]²²²` -/
def P16321761502122743716.Spec : Prop :=
  ∀ n, (P16321761502122743716.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P1415207831883034520

`(lt[3, xor(n, n+1)]^4)²`
-/

namespace A016844.P1415207831883034520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016844.P1415207831883034520

namespace A016844

/-- `(lt[3, xor(n, n+1)]^4)²` -/
def P1415207831883034520.Spec : Prop :=
  ∀ n, (P1415207831883034520.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P141666595345526175

`(lt[xor(3, n), n-1]^4)²`
-/

namespace A016844.P141666595345526175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 4) ^ 2

end

end A016844.P141666595345526175

namespace A016844

/-- `(lt[xor(3, n), n-1]^4)²` -/
def P141666595345526175.Spec : Prop :=
  ∀ n, (P141666595345526175.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P6412173148445109196

`lt[3, xor(n, n+1)]²²²`
-/

namespace A016844.P6412173148445109196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016844.P6412173148445109196

namespace A016844

/-- `lt[3, xor(n, n+1)]²²²` -/
def P6412173148445109196.Spec : Prop :=
  ∀ n, (P6412173148445109196.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P6991166162273821056

`lt[xor(3, n), n-1]²²²`
-/

namespace A016844.P6991166162273821056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016844.P6991166162273821056

namespace A016844

/-- `lt[xor(3, n), n-1]²²²` -/
def P6991166162273821056.Spec : Prop :=
  ∀ n, (P6991166162273821056.a n : ℤ) = A016844 n

end A016844

/-! ## A016844.P8583704902013397130

`Δ[C(2*n+1, 2)]²²²`
-/

namespace A016844.P8583704902013397130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016844.P8583704902013397130

namespace A016844

/-- `Δ[C(2*n+1, 2)]²²²` -/
def P8583704902013397130.Spec : Prop :=
  ∀ n, P8583704902013397130.a n = A016844 n

end A016844

/-! ## A016844.P3281523049348716774

`(C(n, 2)-∑[n+3])²²²`
-/

namespace A016844.P3281523049348716774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.choose n 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016844.P3281523049348716774

namespace A016844

/-- `(C(n, 2)-∑[n+3])²²²` -/
def P3281523049348716774.Spec : Prop :=
  ∀ n, P3281523049348716774.a n = A016844 n

end A016844

/-! ## A016844.P2570158112818718500

`record[(n+3)^2^and(3, n-1)]`
-/

namespace A016844.P2570158112818718500
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ ((2 : ℚ) ^ (Int.land 3 ((n : ℤ) - 1) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016844.P2570158112818718500

namespace A016844

/-- `record[(n+3)^2^and(3, n-1)]` -/
def P2570158112818718500.Spec : Prop :=
  ∀ n, P2570158112818718500.a n = (A016844 n : ℝ)

end A016844

/-! ## A016844.P2975966367585904353

`record[((n+3)^and(4, (n+2)²))²]`
-/

namespace A016844.P2975966367585904353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.land 4 ((n + 2) ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016844.P2975966367585904353

namespace A016844

/-- `record[((n+3)^and(4, (n+2)²))²]` -/
def P2975966367585904353.Spec : Prop :=
  ∀ n, (P2975966367585904353.a n : ℤ) = A016844 n

end A016844

/-!
# A016845: a(n) = (4n+3)^9.

The programs for A016845, the canonical program `A016845.P1544239424656120646` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016845 has offset 0).

The definition of A016845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^9` (program `A016845.P1544239424656120646`, by `A016845.P1544239424656120646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016845.P1544239424656120646

`(4*n+3)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016845

/-- `(4*n+3)^9` -/
def P1544239424656120646.Spec : Prop :=
  ∀ n, (P1544239424656120646.a n : ℤ) = A016845 n

theorem P1544239424656120646.correct : P1544239424656120646.Spec := by
  intro n
  simp only [A016845]

end A016845

/-! ## A016845.P9413901742398176938

`record[xor(3, n)^9]`
-/

namespace A016845.P9413901742398176938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016845.P9413901742398176938

namespace A016845

/-- `record[xor(3, n)^9]` -/
def P9413901742398176938.Spec : Prop :=
  ∀ n, (P9413901742398176938.a n : ℤ) = A016845 n

end A016845

/-! ## A016845.P14413488174695217274

`record[(n+3)^((n+3)%4)²]`
-/

namespace A016845.P14413488174695217274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ ((n + 3) % 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016845.P14413488174695217274

namespace A016845

/-- `record[(n+3)^((n+3)%4)²]` -/
def P14413488174695217274.Spec : Prop :=
  ∀ n, (P14413488174695217274.a n : ℤ) = A016845 n

end A016845

/-! ## A016845.P3521744874215780570

`record[(n+3)^and(3, n-1)²]`
-/

namespace A016845.P3521744874215780570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (Int.land 3 ((n : ℤ) - 1) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016845.P3521744874215780570

namespace A016845

/-- `record[(n+3)^and(3, n-1)²]` -/
def P3521744874215780570.Spec : Prop :=
  ∀ n, P3521744874215780570.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P7164076844819965189

`record[A322469(n+1)^9]`
-/

namespace A016845.P7164076844819965189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322469 (n + 1) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016845.P7164076844819965189

namespace A016845

/-- `record[A322469(n+1)^9]` -/
def P7164076844819965189.Spec : Prop :=
  ∀ n, P7164076844819965189.a n = A016845 n

end A016845

/-! ## A016845.P6935301869154751777

`A016838(n)*A016843(n)`
-/

namespace A016845.P6935301869154751777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016843 n

end

end A016845.P6935301869154751777

namespace A016845

/-- `A016838(n)*A016843(n)` -/
def P6935301869154751777.Spec : Prop :=
  ∀ n, P6935301869154751777.a n = A016845 n

end A016845

/-! ## A016845.P17065118268755654548

`A016839(n)*A016842(n)`
-/

namespace A016845.P17065118268755654548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n * A016842 n

end

end A016845.P17065118268755654548

namespace A016845

/-- `A016839(n)*A016842(n)` -/
def P17065118268755654548.Spec : Prop :=
  ∀ n, P17065118268755654548.a n = A016845 n

end A016845

/-! ## A016845.P14905069189516921926

`A016840(n)*A016841(n)`
-/

namespace A016845.P14905069189516921926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 n * A016841 n

end

end A016845.P14905069189516921926

namespace A016845

/-- `A016840(n)*A016841(n)` -/
def P14905069189516921926.Spec : Prop :=
  ∀ n, P14905069189516921926.a n = A016845 n

end A016845

/-! ## A016845.P17168295215951269596

`A016847(n)/A016838(n)`
-/

namespace A016845.P17168295215951269596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / (A016838 n : ℚ)

end

end A016845.P17168295215951269596

namespace A016845

/-- `A016847(n)/A016838(n)` -/
def P17168295215951269596.Spec : Prop :=
  ∀ n, P17168295215951269596.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P13711096628130612957

`A016848(n)/A016839(n)`
-/

namespace A016845.P13711096628130612957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 n : ℚ) / (A016839 n : ℚ)

end

end A016845.P13711096628130612957

namespace A016845

/-- `A016848(n)/A016839(n)` -/
def P13711096628130612957.Spec : Prop :=
  ∀ n, P13711096628130612957.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P10523688458214151579

`A004767(n)²*A016843(n)`
-/

namespace A016845.P10523688458214151579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2 * A016843 n

end

end A016845.P10523688458214151579

namespace A016845

/-- `A004767(n)²*A016843(n)` -/
def P10523688458214151579.Spec : Prop :=
  ∀ n, P10523688458214151579.a n = A016845 n

end A016845

/-! ## A016845.P5528124766305447071

`A016840(n)²*A004767(n)`
-/

namespace A016845.P5528124766305447071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 n ^ 2 * A004767 n

end

end A016845.P5528124766305447071

namespace A016845

/-- `A016840(n)²*A004767(n)` -/
def P5528124766305447071.Spec : Prop :=
  ∀ n, P5528124766305447071.a n = A016845 n

end A016845

/-! ## A016845.P10307249798336115374

`A016838(n)²*A016841(n)`
-/

namespace A016845.P10307249798336115374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n ^ 2 * A016841 n

end

end A016845.P10307249798336115374

namespace A016845

/-- `A016838(n)²*A016841(n)` -/
def P10307249798336115374.Spec : Prop :=
  ∀ n, P10307249798336115374.a n = A016845 n

end A016845

/-! ## A016845.P2675161959930534734

`A016841(n)²/A004767(n)`
-/

namespace A016845.P2675161959930534734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016841 n ^ 2 : ℚ) / (A004767 n : ℚ)

end

end A016845.P2675161959930534734

namespace A016845

/-- `A016841(n)²/A004767(n)` -/
def P2675161959930534734.Spec : Prop :=
  ∀ n, P2675161959930534734.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P9968362337040643629

`A016847(n)/A004767(n)²`
-/

namespace A016845.P9968362337040643629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / (A004767 n ^ 2 : ℚ)

end

end A016845.P9968362337040643629

namespace A016845

/-- `A016847(n)/A004767(n)²` -/
def P9968362337040643629.Spec : Prop :=
  ∀ n, P9968362337040643629.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P8751774132181208563

`A016838(n)²²*A004767(n)`
-/

namespace A016845.P8751774132181208563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 n ^ 2) ^ 2 * A004767 n

end

end A016845.P8751774132181208563

namespace A016845

/-- `A016838(n)²²*A004767(n)` -/
def P8751774132181208563.Spec : Prop :=
  ∀ n, P8751774132181208563.a n = A016845 n

end A016845

/-! ## A016845.P2585102967092153615

`A016847(n)/(A016825(n)+1)²`
-/

namespace A016845.P2585102967092153615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 n : ℚ) / ((A016825 n + 1) ^ 2 : ℚ)

end

end A016845.P2585102967092153615

namespace A016845

/-- `A016847(n)/(A016825(n)+1)²` -/
def P2585102967092153615.Spec : Prop :=
  ∀ n, P2585102967092153615.a n = (A016845 n : ℚ)

end A016845

/-! ## A016845.P2860608132819526054

`A004767(n)*A016838(n)*A016842(n)`
-/

namespace A016845.P2860608132819526054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016838 n * A016842 n

end

end A016845.P2860608132819526054

namespace A016845

/-- `A004767(n)*A016838(n)*A016842(n)` -/
def P2860608132819526054.Spec : Prop :=
  ∀ n, P2860608132819526054.a n = A016845 n

end A016845

/-! ## A016845.P14931040473900769524

`A004767(n)*A016839(n)*A016841(n)`
-/

namespace A016845.P14931040473900769524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016839 n * A016841 n

end

end A016845.P14931040473900769524

namespace A016845

/-- `A004767(n)*A016839(n)*A016841(n)` -/
def P14931040473900769524.Spec : Prop :=
  ∀ n, P14931040473900769524.a n = A016845 n

end A016845

/-! ## A016845.P14163721216787575215

`A016838(n)*A016839(n)*A016840(n)`
-/

namespace A016845.P14163721216787575215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016839 n * A016840 n

end

end A016845.P14163721216787575215

namespace A016845

/-- `A016838(n)*A016839(n)*A016840(n)` -/
def P14163721216787575215.Spec : Prop :=
  ∀ n, P14163721216787575215.a n = A016845 n

end A016845

/-!
# A016846: a(n) = (4*n + 3)^10.

The programs for A016846, the canonical program `A016846.P2352443008357000879` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016846 has offset 0).

The definition of A016846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^10` (program `A016846.P2352443008357000879`, by `A016846.P2352443008357000879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016846.P2352443008357000879

`(4*n+3)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016846

/-- `(4*n+3)^10` -/
def P2352443008357000879.Spec : Prop :=
  ∀ n, (P2352443008357000879.a n : ℤ) = A016846 n

theorem P2352443008357000879.correct : P2352443008357000879.Spec := by
  intro n
  simp only [A016846]

end A016846

/-! ## A016846.P17122695561609496036

`record[xor(3, n)^10]`
-/

namespace A016846.P17122695561609496036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016846.P17122695561609496036

namespace A016846

/-- `record[xor(3, n)^10]` -/
def P17122695561609496036.Spec : Prop :=
  ∀ n, (P17122695561609496036.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P9122440755955383560

`(or(3, 4*n)^5)²`
-/

namespace A016846.P9122440755955383560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * n) ^ 5) ^ 2

end

end A016846.P9122440755955383560

namespace A016846

/-- `(or(3, 4*n)^5)²` -/
def P9122440755955383560.Spec : Prop :=
  ∀ n, (P9122440755955383560.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P18297446030885831870

`(xor(3, 4*n)^5)²`
-/

namespace A016846.P18297446030885831870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * n) ^ 5) ^ 2

end

end A016846.P18297446030885831870

namespace A016846

/-- `(xor(3, 4*n)^5)²` -/
def P18297446030885831870.Spec : Prop :=
  ∀ n, (P18297446030885831870.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P11633292206537214153

`(lt[1, val(n+1, 2)]^5)²`
-/

namespace A016846.P11633292206537214153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016846.P11633292206537214153

namespace A016846

/-- `(lt[1, val(n+1, 2)]^5)²` -/
def P11633292206537214153.Spec : Prop :=
  ∀ n, (P11633292206537214153.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P987404051596789585

`(eq[1, val(n+3, 2)]^5)²`
-/

namespace A016846.P987404051596789585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016846.P987404051596789585

namespace A016846

/-- `(eq[1, val(n+3, 2)]^5)²` -/
def P987404051596789585.Spec : Prop :=
  ∀ n, (P987404051596789585.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P15820797539078233179

`(lt[3, xor(n, n+1)]^5)²`
-/

namespace A016846.P15820797539078233179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016846.P15820797539078233179

namespace A016846

/-- `(lt[3, xor(n, n+1)]^5)²` -/
def P15820797539078233179.Spec : Prop :=
  ∀ n, (P15820797539078233179.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P4086501581136665391

`(lt[xor(3, n), n-1]^5)²`
-/

namespace A016846.P4086501581136665391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 5) ^ 2

end

end A016846.P4086501581136665391

namespace A016846

/-- `(lt[xor(3, n), n-1]^5)²` -/
def P4086501581136665391.Spec : Prop :=
  ∀ n, (P4086501581136665391.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P1901917499112633327

`(eq[n+1, lcm(4, n+1)]^5)²`
-/

namespace A016846.P1901917499112633327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016846.P1901917499112633327

namespace A016846

/-- `(eq[n+1, lcm(4, n+1)]^5)²` -/
def P1901917499112633327.Spec : Prop :=
  ∀ n, (P1901917499112633327.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P7027121049451974109

`(eq[3, xor(n+2, n+3)]^5)²`
-/

namespace A016846.P7027121049451974109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016846.P7027121049451974109

namespace A016846

/-- `(eq[3, xor(n+2, n+3)]^5)²` -/
def P7027121049451974109.Spec : Prop :=
  ∀ n, (P7027121049451974109.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P15766830791785140611

`(lt[and(n, n+1), n-1]^5)²`
-/

namespace A016846.P15766830791785140611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 5) ^ 2

end

end A016846.P15766830791785140611

namespace A016846

/-- `(lt[and(n, n+1), n-1]^5)²` -/
def P15766830791785140611.Spec : Prop :=
  ∀ n, (P15766830791785140611.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P2743887912270935729

`(lt[n+2, or(n, n+1)]^5)²`
-/

namespace A016846.P2743887912270935729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016846.P2743887912270935729

namespace A016846

/-- `(lt[n+2, or(n, n+1)]^5)²` -/
def P2743887912270935729.Spec : Prop :=
  ∀ n, (P2743887912270935729.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P1015635518359959999

`(eq[n+1, and(n+2, n+3)]^5)²`
-/

namespace A016846.P1015635518359959999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016846.P1015635518359959999

namespace A016846

/-- `(eq[n+1, and(n+2, n+3)]^5)²` -/
def P1015635518359959999.Spec : Prop :=
  ∀ n, (P1015635518359959999.a n : ℤ) = A016846 n

end A016846

/-! ## A016846.P5761315836490094902

`A016841(n)²`
-/

namespace A016846.P5761315836490094902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 n ^ 2

end

end A016846.P5761315836490094902

namespace A016846

/-- `A016841(n)²` -/
def P5761315836490094902.Spec : Prop :=
  ∀ n, P5761315836490094902.a n = A016846 n

end A016846

/-! ## A016846.P689641423128542649

`(A004767(n)^5)²`
-/

namespace A016846.P689641423128542649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n ^ 5) ^ 2

end

end A016846.P689641423128542649

namespace A016846

/-- `(A004767(n)^5)²` -/
def P689641423128542649.Spec : Prop :=
  ∀ n, P689641423128542649.a n = A016846 n

end A016846

/-! ## A016846.P10334009037143144945

`((A016813(n)+2)^5)²`
-/

namespace A016846.P10334009037143144945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016813 n + 2) ^ 5) ^ 2

end

end A016846.P10334009037143144945

namespace A016846

/-- `((A016813(n)+2)^5)²` -/
def P10334009037143144945.Spec : Prop :=
  ∀ n, P10334009037143144945.a n = A016846 n

end A016846

/-! ## A016846.P8696569998970157343

`A004767(n)*A016845(n)`
-/

namespace A016846.P8696569998970157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016845 n

end

end A016846.P8696569998970157343

namespace A016846

/-- `A004767(n)*A016845(n)` -/
def P8696569998970157343.Spec : Prop :=
  ∀ n, P8696569998970157343.a n = A016846 n

end A016846

/-! ## A016846.P1461926488887077138

`A016838(n)*A016844(n)`
-/

namespace A016846.P1461926488887077138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016844 n

end

end A016846.P1461926488887077138

namespace A016846

/-- `A016838(n)*A016844(n)` -/
def P1461926488887077138.Spec : Prop :=
  ∀ n, P1461926488887077138.a n = A016846 n

end A016846

/-! ## A016846.P18007764858657797251

`A016839(n)*A016843(n)`
-/

namespace A016846.P18007764858657797251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n * A016843 n

end

end A016846.P18007764858657797251

namespace A016846

/-- `A016839(n)*A016843(n)` -/
def P18007764858657797251.Spec : Prop :=
  ∀ n, P18007764858657797251.a n = A016846 n

end A016846

/-! ## A016846.P15791828085737802864

`A016840(n)*A016842(n)`
-/

namespace A016846.P15791828085737802864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 n * A016842 n

end

end A016846.P15791828085737802864

namespace A016846

/-- `A016840(n)*A016842(n)` -/
def P15791828085737802864.Spec : Prop :=
  ∀ n, P15791828085737802864.a n = A016846 n

end A016846

/-!
# A016847: a(n) = (4n+3)^11.

The programs for A016847, the canonical program `A016847.P5321093100714514550` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016847 has offset 0).

The definition of A016847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^11` (program `A016847.P5321093100714514550`, by `A016847.P5321093100714514550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016847.P5321093100714514550

`(4*n+3)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016847

/-- `(4*n+3)^11` -/
def P5321093100714514550.Spec : Prop :=
  ∀ n, (P5321093100714514550.a n : ℤ) = A016847 n

theorem P5321093100714514550.correct : P5321093100714514550.Spec := by
  intro n
  simp only [A016847]

end A016847

/-! ## A016847.P6410574542729218793

`record[xor(3, n)^11]`
-/

namespace A016847.P6410574542729218793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016847.P6410574542729218793

namespace A016847

/-- `record[xor(3, n)^11]` -/
def P6410574542729218793.Spec : Prop :=
  ∀ n, (P6410574542729218793.a n : ℤ) = A016847 n

end A016847

/-! ## A016847.P8164812470070645096

`A016838(n)*A016845(n)`
-/

namespace A016847.P8164812470070645096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016845 n

end

end A016847.P8164812470070645096

namespace A016847

/-- `A016838(n)*A016845(n)` -/
def P8164812470070645096.Spec : Prop :=
  ∀ n, P8164812470070645096.a n = A016847 n

end A016847

/-! ## A016847.P8131387181723574795

`A016840(n)*A016843(n)`
-/

namespace A016847.P8131387181723574795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 n * A016843 n

end

end A016847.P8131387181723574795

namespace A016847

/-- `A016840(n)*A016843(n)` -/
def P8131387181723574795.Spec : Prop :=
  ∀ n, P8131387181723574795.a n = A016847 n

end A016847

/-! ## A016847.P3997095408445974455

`A016841(n)*A016842(n)`
-/

namespace A016847.P3997095408445974455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 n * A016842 n

end

end A016847.P3997095408445974455

namespace A016847

/-- `A016841(n)*A016842(n)` -/
def P3997095408445974455.Spec : Prop :=
  ∀ n, P3997095408445974455.a n = A016847 n

end A016847

/-! ## A016847.P14835750293135767484

`A016848(n)/A004767(n)`
-/

namespace A016847.P14835750293135767484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 n : ℚ) / (A004767 n : ℚ)

end

end A016847.P14835750293135767484

namespace A016847

/-- `A016848(n)/A004767(n)` -/
def P14835750293135767484.Spec : Prop :=
  ∀ n, P14835750293135767484.a n = (A016847 n : ℚ)

end A016847

/-! ## A016847.P16333143402180429491

`A004767(n)²*A016845(n)`
-/

namespace A016847.P16333143402180429491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2 * A016845 n

end

end A016847.P16333143402180429491

namespace A016847

/-- `A004767(n)²*A016845(n)` -/
def P16333143402180429491.Spec : Prop :=
  ∀ n, P16333143402180429491.a n = A016847 n

end A016847

/-! ## A016847.P8801897562159436083

`A016841(n)²*A004767(n)`
-/

namespace A016847.P8801897562159436083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 n ^ 2 * A004767 n

end

end A016847.P8801897562159436083

namespace A016847

/-- `A016841(n)²*A004767(n)` -/
def P8801897562159436083.Spec : Prop :=
  ∀ n, P8801897562159436083.a n = A016847 n

end A016847

/-! ## A016847.P14838025736458845697

`A016838(n)²*A016843(n)`
-/

namespace A016847.P14838025736458845697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n ^ 2 * A016843 n

end

end A016847.P14838025736458845697

namespace A016847

/-- `A016838(n)²*A016843(n)` -/
def P14838025736458845697.Spec : Prop :=
  ∀ n, P14838025736458845697.a n = A016847 n

end A016847

/-! ## A016847.P16903183441995135664

`A016839(n)²*A016841(n)`
-/

namespace A016847.P16903183441995135664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n ^ 2 * A016841 n

end

end A016847.P16903183441995135664

namespace A016847

/-- `A016839(n)²*A016841(n)` -/
def P16903183441995135664.Spec : Prop :=
  ∀ n, P16903183441995135664.a n = A016847 n

end A016847

/-! ## A016847.P11456735159727323346

`A016840(n)²*A016839(n)`
-/

namespace A016847.P11456735159727323346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 n ^ 2 * A016839 n

end

end A016847.P11456735159727323346

namespace A016847

/-- `A016840(n)²*A016839(n)` -/
def P11456735159727323346.Spec : Prop :=
  ∀ n, P11456735159727323346.a n = A016847 n

end A016847

/-! ## A016847.P8293330320970886517

`A016842(n)²/A004767(n)`
-/

namespace A016847.P8293330320970886517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016842 n ^ 2 : ℚ) / (A004767 n : ℚ)

end

end A016847.P8293330320970886517

namespace A016847

/-- `A016842(n)²/A004767(n)` -/
def P8293330320970886517.Spec : Prop :=
  ∀ n, P8293330320970886517.a n = (A016847 n : ℚ)

end A016847

/-! ## A016847.P17715588592984795946

`A004767(n)²²*A016843(n)`
-/

namespace A016847.P17715588592984795946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n ^ 2) ^ 2 * A016843 n

end

end A016847.P17715588592984795946

namespace A016847

/-- `A004767(n)²²*A016843(n)` -/
def P17715588592984795946.Spec : Prop :=
  ∀ n, P17715588592984795946.a n = A016847 n

end A016847

/-! ## A016847.P17873026468890975812

`A016838(n)²²*A016839(n)`
-/

namespace A016847.P17873026468890975812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 n ^ 2) ^ 2 * A016839 n

end

end A016847.P17873026468890975812

namespace A016847

/-- `A016838(n)²²*A016839(n)` -/
def P17873026468890975812.Spec : Prop :=
  ∀ n, P17873026468890975812.a n = A016847 n

end A016847

/-! ## A016847.P13131577636468178801

`A016839(n)²²/A004767(n)`
-/

namespace A016847.P13131577636468178801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016839 n ^ 2) ^ 2 : ℚ) / (A004767 n : ℚ)

end

end A016847.P13131577636468178801

namespace A016847

/-- `A016839(n)²²/A004767(n)` -/
def P13131577636468178801.Spec : Prop :=
  ∀ n, P13131577636468178801.a n = (A016847 n : ℚ)

end A016847

/-! ## A016847.P10725610839765608045

`A004767(n)*A016839(n)*A016843(n)`
-/

namespace A016847.P10725610839765608045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016839 n * A016843 n

end

end A016847.P10725610839765608045

namespace A016847

/-- `A004767(n)*A016839(n)*A016843(n)` -/
def P10725610839765608045.Spec : Prop :=
  ∀ n, P10725610839765608045.a n = A016847 n

end A016847

/-! ## A016847.P445627719464474904

`A016838(n)*A016839(n)*A016842(n)`
-/

namespace A016847.P445627719464474904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n * A016839 n * A016842 n

end

end A016847.P445627719464474904

namespace A016847

/-- `A016838(n)*A016839(n)*A016842(n)` -/
def P445627719464474904.Spec : Prop :=
  ∀ n, P445627719464474904.a n = A016847 n

end A016847

/-! ## A016847.P4412781342886687006

`A016838(n)/A016839(n)*A016848(n)`
-/

namespace A016847.P4412781342886687006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016838 n : ℚ) / (A016839 n : ℚ) * (A016848 n : ℚ)

end

end A016847.P4412781342886687006

namespace A016847

/-- `A016838(n)/A016839(n)*A016848(n)` -/
def P4412781342886687006.Spec : Prop :=
  ∀ n, P4412781342886687006.a n = (A016847 n : ℚ)

end A016847

/-! ## A016847.P2184793904862540879

`A016844(n)/A016841(n)*A016844(n)`
-/

namespace A016847.P2184793904862540879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016844 n : ℚ) / (A016841 n : ℚ) * (A016844 n : ℚ)

end

end A016847.P2184793904862540879

namespace A016847

/-- `A016844(n)/A016841(n)*A016844(n)` -/
def P2184793904862540879.Spec : Prop :=
  ∀ n, P2184793904862540879.a n = (A016847 n : ℚ)

end A016847

/-! ## A016847.P2020549094761262674

`A016845(n)/A016843(n)*A016845(n)`
-/

namespace A016847.P2020549094761262674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 n : ℚ) / (A016843 n : ℚ) * (A016845 n : ℚ)

end

end A016847.P2020549094761262674

namespace A016847

/-- `A016845(n)/A016843(n)*A016845(n)` -/
def P2020549094761262674.Spec : Prop :=
  ∀ n, P2020549094761262674.a n = (A016847 n : ℚ)

end A016847

/-!
# A016848: a(n) = (4*n+3)^12.

The programs for A016848, the canonical program `A016848.P5204700266064583920` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016848 has offset 0).

The definition of A016848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)^12` (program `A016848.P5204700266064583920`, by `A016848.P5204700266064583920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016848.P5204700266064583920

`(4*n+3)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016848

/-- `(4*n+3)^12` -/
def P5204700266064583920.Spec : Prop :=
  ∀ n, (P5204700266064583920.a n : ℤ) = A016848 n

theorem P5204700266064583920.correct : P5204700266064583920.Spec := by
  intro n
  simp only [A016848]

end A016848

/-! ## A016848.P17333715080021713482

`record[(xor(3, n)^6)²]`
-/

namespace A016848.P17333715080021713482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016848.P17333715080021713482

namespace A016848

/-- `record[(xor(3, n)^6)²]` -/
def P17333715080021713482.Spec : Prop :=
  ∀ n, (P17333715080021713482.a n : ℤ) = A016848 n

end A016848

/-! ## A016848.P5831061479756036213

`record[xor(3, n)^3^4]`
-/

namespace A016848.P5831061479756036213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 3) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016848.P5831061479756036213

namespace A016848

/-- `record[xor(3, n)^3^4]` -/
def P5831061479756036213.Spec : Prop :=
  ∀ n, (P5831061479756036213.a n : ℤ) = A016848 n

end A016848

/-! ## A016848.P7854991599826588380

`A016842(n)²`
-/

namespace A016848.P7854991599826588380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016842 n ^ 2

end

end A016848.P7854991599826588380

namespace A016848

/-- `A016842(n)²` -/
def P7854991599826588380.Spec : Prop :=
  ∀ n, P7854991599826588380.a n = A016848 n

end A016848

/-! ## A016848.P17389994845250544926

`(A004767(n)^3)²²`
-/

namespace A016848.P17389994845250544926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n ^ 3) ^ 2) ^ 2

end

end A016848.P17389994845250544926

namespace A016848

/-- `(A004767(n)^3)²²` -/
def P17389994845250544926.Spec : Prop :=
  ∀ n, P17389994845250544926.a n = A016848 n

end A016848

/-! ## A016848.P10060300141477814371

`A016841(n)*A016843(n)`
-/

namespace A016848.P10060300141477814371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 n * A016843 n

end

end A016848.P10060300141477814371

namespace A016848

/-- `A016841(n)*A016843(n)` -/
def P10060300141477814371.Spec : Prop :=
  ∀ n, P10060300141477814371.a n = A016848 n

end A016848

/-! ## A016848.P4712859467421273491

`A016764(2*n+1)`
-/

namespace A016848.P4712859467421273491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (2 * n + 1)

end

end A016848.P4712859467421273491

namespace A016848

/-- `A016764(2*n+1)` -/
def P4712859467421273491.Spec : Prop :=
  ∀ n, P4712859467421273491.a n = A016848 n

end A016848

/-! ## A016848.P8043972909318922991

`A016758(2*n+1)²`
-/

namespace A016848.P8043972909318922991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 (2 * n + 1) ^ 2

end

end A016848.P8043972909318922991

namespace A016848

/-- `A016758(2*n+1)²` -/
def P8043972909318922991.Spec : Prop :=
  ∀ n, P8043972909318922991.a n = A016848 n

end A016848

/-! ## A016848.P18271870284614083672

`A016755(2*n+1)²²`
-/

namespace A016848.P18271870284614083672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (2 * n + 1) ^ 2) ^ 2

end

end A016848.P18271870284614083672

namespace A016848

/-- `A016755(2*n+1)²²` -/
def P18271870284614083672.Spec : Prop :=
  ∀ n, P18271870284614083672.a n = A016848 n

end A016848

/-! ## A016848.P10417943921655228352

`A016756(2*n+1)*A016760(2*n+1)`
-/

namespace A016848.P10417943921655228352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 (2 * n + 1) * A016760 (2 * n + 1)

end

end A016848.P10417943921655228352

namespace A016848

/-- `A016756(2*n+1)*A016760(2*n+1)` -/
def P10417943921655228352.Spec : Prop :=
  ∀ n, P10417943921655228352.a n = A016848 n

end A016848

/-! ## A016848.P8554885381942542522

`A008456(A004767(n))`
-/

namespace A016848.P8554885381942542522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n).toNat

end

end A016848.P8554885381942542522

namespace A016848

/-- `A008456(A004767(n))` -/
def P8554885381942542522.Spec : Prop :=
  ∀ n, P8554885381942542522.a n = A016848 n

end A016848

/-! ## A016848.P16819305784275548945

`A000578(A016825(n)+1)²²`
-/

namespace A016848.P16819305784275548945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016825 n + 1).toNat ^ 2) ^ 2

end

end A016848.P16819305784275548945

namespace A016848

/-- `A000578(A016825(n)+1)²²` -/
def P16819305784275548945.Spec : Prop :=
  ∀ n, P16819305784275548945.a n = A016848 n

end A016848

/-! ## A016848.P13161379858453524616

`A000578(A016813(n)+2)²²`
-/

namespace A016848.P13161379858453524616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016813 n + 2).toNat ^ 2) ^ 2

end

end A016848.P13161379858453524616

namespace A016848

/-- `A000578(A016813(n)+2)²²` -/
def P13161379858453524616.Spec : Prop :=
  ∀ n, P13161379858453524616.a n = A016848 n

end A016848

/-! ## A016848.P7436485561181491716

`A000578(A017137(n)/2)²²`
-/

namespace A016848.P7436485561181491716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (SequenceMachineLib.roundAway ((A017137 n : ℚ) / 2)).toNat ^ 2) ^ 2

end

end A016848.P7436485561181491716

namespace A016848

/-- `A000578(A017137(n)/2)²²` -/
def P7436485561181491716.Spec : Prop :=
  ∀ n, P7436485561181491716.a n = A016848 n

end A016848

/-! ## A016848.P4035367283094722807

`A000578(A016885(n)-n)²²`
-/

namespace A016848.P4035367283094722807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016885 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A016848.P4035367283094722807

namespace A016848

/-- `A000578(A016885(n)-n)²²` -/
def P4035367283094722807.Spec : Prop :=
  ∀ n, P4035367283094722807.a n = A016848 n

end A016848

/-!
# A016849: Expansion of 1/((1-3x)(1-4x)(1-8x)).

The programs for A016849, the canonical program `A016849.P812462295059179210` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016849 has offset 0).

The definition of A016849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-15x+68x^2-96x^3))` (program `A016849.P812462295059179210`, by `A016849.P812462295059179210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016849.P812462295059179210

`ogf(1/(1-15x+68x^2-96x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016849

/-- `ogf(1/(1-15x+68x^2-96x^3))` -/
def P812462295059179210.Spec : Prop :=
  ∀ n, P812462295059179210.a n = A016849 n

theorem P812462295059179210.correct : P812462295059179210.Spec := by
  intro n
  simp only [A016849]

end A016849

/-! ## A016849.P15765368413398179978

`12*a(n-1)-32*a(n-2)+3^n` with `a(0)=1, a(1)=15`
-/

namespace A016849.P15765368413398179978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  12 * a (n - 1) - 32 * a (n - 2) + (3 ^ n : ℤ)

end

end A016849.P15765368413398179978

namespace A016849

/-- `12*a(n-1)-32*a(n-2)+3^n` -/
def P15765368413398179978.Spec : Prop :=
  ∀ n, P15765368413398179978.a n = A016849 n

end A016849

/-! ## A016849.P1789642916932977193

`A016290(n)+A016290(n)-A016277(n)`
-/

namespace A016849.P1789642916932977193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n + (A016290 n - A016277 n)

end

end A016849.P1789642916932977193

namespace A016849

/-- `A016290(n)+A016290(n)-A016277(n)` -/
def P1789642916932977193.Spec : Prop :=
  ∀ n, P1789642916932977193.a n = A016849 n

end A016849

/-! ## A016849.P8679632433255718475

`A016214(n)+A021374(n)-A016224(n)`
-/

namespace A016849.P8679632433255718475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 n + (A021374 n - A016224 n)

end

end A016849.P8679632433255718475

namespace A016849

/-- `A016214(n)+A021374(n)-A016224(n)` -/
def P8679632433255718475.Spec : Prop :=
  ∀ n, P8679632433255718475.a n = A016849 n

end A016849

/-! ## A016849.P13284462215479196179

`Δ[A016224(n)-A016214(n)]`
-/

namespace A016849.P13284462215479196179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 n - A016214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016849.P13284462215479196179

namespace A016849

/-- `Δ[A016224(n)-A016214(n)]` -/
def P13284462215479196179.Spec : Prop :=
  ∀ n, P13284462215479196179.a n = A016849 n

end A016849

/-! ## A016849.P2741356271974249110

`2*A016290(n)-A016277(n)`
-/

namespace A016849.P2741356271974249110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016290 n - A016277 n

end

end A016849.P2741356271974249110

namespace A016849

/-- `2*A016290(n)-A016277(n)` -/
def P2741356271974249110.Spec : Prop :=
  ∀ n, P2741356271974249110.a n = A016849 n

end A016849

/-! ## A016849.P13799946424765089235

`(A025467(n)+A016277(n))/2`
-/

namespace A016849.P13799946424765089235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025467 n + A016277 n : ℚ) / 2

end

end A016849.P13799946424765089235

namespace A016849

/-- `(A025467(n)+A016277(n))/2` -/
def P13799946424765089235.Spec : Prop :=
  ∀ n, P13799946424765089235.a n = (A016849 n : ℚ)

end A016849

/-!
# A016850: a(n) = (5*n)^2.

The programs for A016850, the canonical program `A016850.P11162086959237364138` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016850 has offset 0).

The definition of A016850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)²` (program `A016850.P11162086959237364138`, by `A016850.P11162086959237364138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016850.P11162086959237364138

`(5*n)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016850

/-- `(5*n)²` -/
def P11162086959237364138.Spec : Prop :=
  ∀ n, (P11162086959237364138.a n : ℤ) = A016850 n

theorem P11162086959237364138.correct : P11162086959237364138.Spec := by
  intro n
  simp only [A016850]

end A016850

/-!
# A016851: a(n) = (5*n)^3.

The programs for A016851, the canonical program `A016851.P6768670708261062492` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016851 has offset 0).

The definition of A016851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^3` (program `A016851.P6768670708261062492`, by `A016851.P6768670708261062492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016851.P6768670708261062492

`(5*n)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016851

/-- `(5*n)^3` -/
def P6768670708261062492.Spec : Prop :=
  ∀ n, (P6768670708261062492.a n : ℤ) = A016851 n

theorem P6768670708261062492.correct : P6768670708261062492.Spec := by
  intro n
  simp only [A016851]

end A016851

/-!
# A016852: a(n) = (5n)^4.

The programs for A016852, the canonical program `A016852.P3239456561386182559` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016852 has offset 0).

The definition of A016852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^4` (program `A016852.P3239456561386182559`, by `A016852.P3239456561386182559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016852.P3239456561386182559

`(5*n)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016852

/-- `(5*n)^4` -/
def P3239456561386182559.Spec : Prop :=
  ∀ n, (P3239456561386182559.a n : ℤ) = A016852 n

theorem P3239456561386182559.correct : P3239456561386182559.Spec := by
  intro n
  simp only [A016852]

end A016852

/-!
# A016853: a(n) = (5*n)^5.

The programs for A016853, the canonical program `A016853.P2464052663635597259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016853 has offset 0).

The definition of A016853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^5` (program `A016853.P2464052663635597259`, by `A016853.P2464052663635597259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016853.P2464052663635597259

`(5*n)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016853

/-- `(5*n)^5` -/
def P2464052663635597259.Spec : Prop :=
  ∀ n, (P2464052663635597259.a n : ℤ) = A016853 n

theorem P2464052663635597259.correct : P2464052663635597259.Spec := by
  intro n
  simp only [A016853]

end A016853

/-!
# A016854: a(n) = (5*n)^6.

The programs for A016854, the canonical program `A016854.P2052501307848235543` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016854 has offset 0).

The definition of A016854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^6` (program `A016854.P2052501307848235543`, by `A016854.P2052501307848235543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016854.P2052501307848235543

`(5*n)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016854

/-- `(5*n)^6` -/
def P2052501307848235543.Spec : Prop :=
  ∀ n, (P2052501307848235543.a n : ℤ) = A016854 n

theorem P2052501307848235543.correct : P2052501307848235543.Spec := by
  intro n
  simp only [A016854]

end A016854

/-!
# A016855: a(n) = (5*n)^7.

The programs for A016855, the canonical program `A016855.P10683975328817465374` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016855 has offset 0).

The definition of A016855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^7` (program `A016855.P10683975328817465374`, by `A016855.P10683975328817465374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016855.P10683975328817465374

`(5*n)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016855

/-- `(5*n)^7` -/
def P10683975328817465374.Spec : Prop :=
  ∀ n, (P10683975328817465374.a n : ℤ) = A016855 n

theorem P10683975328817465374.correct : P10683975328817465374.Spec := by
  intro n
  simp only [A016855]

end A016855

/-!
# A016856: a(n) = (5*n)^8.

The programs for A016856, the canonical program `A016856.P9148212645109043903` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016856 has offset 0).

The definition of A016856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^8` (program `A016856.P9148212645109043903`, by `A016856.P9148212645109043903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016856.P9148212645109043903

`(5*n)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016856

/-- `(5*n)^8` -/
def P9148212645109043903.Spec : Prop :=
  ∀ n, (P9148212645109043903.a n : ℤ) = A016856 n

theorem P9148212645109043903.correct : P9148212645109043903.Spec := by
  intro n
  simp only [A016856]

end A016856

/-!
# A016857: a(n) = (5n)^9.

The programs for A016857, the canonical program `A016857.P5788783789876433025` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016857 has offset 0).

The definition of A016857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^9` (program `A016857.P5788783789876433025`, by `A016857.P5788783789876433025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016857.P5788783789876433025

`(5*n)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016857

/-- `(5*n)^9` -/
def P5788783789876433025.Spec : Prop :=
  ∀ n, (P5788783789876433025.a n : ℤ) = A016857 n

theorem P5788783789876433025.correct : P5788783789876433025.Spec := by
  intro n
  simp only [A016857]

end A016857

/-!
# A016858: a(n) = (5n)^10.

The programs for A016858, the canonical program `A016858.P9749917206669519012` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016858 has offset 0).

The definition of A016858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^10` (program `A016858.P9749917206669519012`, by `A016858.P9749917206669519012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016858.P9749917206669519012

`(5*n)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016858

/-- `(5*n)^10` -/
def P9749917206669519012.Spec : Prop :=
  ∀ n, (P9749917206669519012.a n : ℤ) = A016858 n

theorem P9749917206669519012.correct : P9749917206669519012.Spec := by
  intro n
  simp only [A016858]

end A016858

/-!
# A016859: a(n) = (5*n)^11.

The programs for A016859, the canonical program `A016859.P7082368376540850853` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016859 has offset 0).

The definition of A016859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^11` (program `A016859.P7082368376540850853`, by `A016859.P7082368376540850853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016859.P7082368376540850853

`(5*n)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016859

/-- `(5*n)^11` -/
def P7082368376540850853.Spec : Prop :=
  ∀ n, (P7082368376540850853.a n : ℤ) = A016859 n

theorem P7082368376540850853.correct : P7082368376540850853.Spec := by
  intro n
  simp only [A016859]

end A016859

/-!
# A016860: a(n) = (5*n)^12.

The programs for A016860, the canonical program `A016860.P6821678932424207376` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016860 has offset 0).

The definition of A016860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n)^12` (program `A016860.P6821678932424207376`, by `A016860.P6821678932424207376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016860.P6821678932424207376

`(5*n)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016860

/-- `(5*n)^12` -/
def P6821678932424207376.Spec : Prop :=
  ∀ n, (P6821678932424207376.a n : ℤ) = A016860 n

theorem P6821678932424207376.correct : P6821678932424207376.Spec := by
  intro n
  simp only [A016860]

end A016860

/-!
# A016861: a(n) = 5*n + 1.

The programs for A016861, the canonical program `A016861.P12760207785627616280` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016861 has offset 0).

The definition of A016861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+1` (program `A016861.P12760207785627616280`, by `A016861.P12760207785627616280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016861.P12760207785627616280

`5*n+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016861

/-- `5*n+1` -/
def P12760207785627616280.Spec : Prop :=
  ∀ n, (P12760207785627616280.a n : ℤ) = A016861 n

theorem P12760207785627616280.correct : P12760207785627616280.Spec := by
  intro n
  simp only [A016861]

end A016861

/-!
# A016862: a(n) = (5*n + 1)^2.

The programs for A016862, the canonical program `A016862.P4720776691186821444` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016862 has offset 0).

The definition of A016862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)²` (program `A016862.P4720776691186821444`, by `A016862.P4720776691186821444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016862.P4720776691186821444

`(5*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016862

/-- `(5*n+1)²` -/
def P4720776691186821444.Spec : Prop :=
  ∀ n, (P4720776691186821444.a n : ℤ) = A016862 n

theorem P4720776691186821444.correct : P4720776691186821444.Spec := by
  intro n
  simp only [A016862]

end A016862

/-! ## A016862.P3377188196300114034

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=36, a(2)=121`
-/

namespace A016862.P3377188196300114034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 36, 121] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016862.P3377188196300114034

namespace A016862

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3377188196300114034.Spec : Prop :=
  ∀ n, P3377188196300114034.a n = A016862 n

theorem P3377188196300114034.correct : P3377188196300114034.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016862, Nat.add_sub_cancel, A016862.P3377188196300114034.a, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016862, Nat.add_sub_cancel, A016862.P3377188196300114034.a, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016862

/-! ## A016862.P7750550072734577680

`xor(5*n, -1)^2`
-/

namespace A016862.P7750550072734577680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 * n : ℤ) (-1) ^ 2

end

end A016862.P7750550072734577680

namespace A016862

/-- `xor(5*n, -1)^2` -/
def P7750550072734577680.Spec : Prop :=
  ∀ n, P7750550072734577680.a n = A016862 n

end A016862

/-! ## A016862.P9656308529602456320

`(lcm(5, 5*n)+1)^2`
-/

namespace A016862.P9656308529602456320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (5 * n) + 1) ^ 2

end

end A016862.P9656308529602456320

namespace A016862

/-- `(lcm(5, 5*n)+1)^2` -/
def P9656308529602456320.Spec : Prop :=
  ∀ n, (P9656308529602456320.a n : ℤ) = A016862 n

theorem P9656308529602456320.correct : P9656308529602456320.Spec := by
  intro n
  simp only [A016862, Nat.add_sub_cancel, A016862.P9656308529602456320.a, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply]
  try simp

end A016862

/-! ## A016862.P979251985191330782

`(or(1, 4*n)+n)^2`
-/

namespace A016862.P979251985191330782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * n) + n) ^ 2

end

end A016862.P979251985191330782

namespace A016862

/-- `(or(1, 4*n)+n)^2` -/
def P979251985191330782.Spec : Prop :=
  ∀ n, (P979251985191330782.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P16064042742667890202

`(xor(1, 4*n)+n)^2`
-/

namespace A016862.P16064042742667890202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * n) + n) ^ 2

end

end A016862.P16064042742667890202

namespace A016862

/-- `(xor(1, 4*n)+n)^2` -/
def P16064042742667890202.Spec : Prop :=
  ∀ n, (P16064042742667890202.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P15360102183962497717

`∑[a(n-1)+50]` with `a(0)=1, a(1)=35`
-/

namespace A016862.P15360102183962497717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016862.P15360102183962497717

namespace A016862

/-- `∑[a(n-1)+50]` -/
def P15360102183962497717.Spec : Prop :=
  ∀ n, (P15360102183962497717.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P17802300672337712186

`record[(gcd(5, 1-n)+n)²]`
-/

namespace A016862.P17802300672337712186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016862.P17802300672337712186

namespace A016862

/-- `record[(gcd(5, 1-n)+n)²]` -/
def P17802300672337712186.Spec : Prop :=
  ∀ n, (P17802300672337712186.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P6204120012224470381

`eq[n, n^(n%5)]^2`
-/

namespace A016862.P6204120012224470381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A016862.P6204120012224470381

namespace A016862

/-- `eq[n, n^(n%5)]^2` -/
def P6204120012224470381.Spec : Prop :=
  ∀ n, (P6204120012224470381.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P46320542722280470

`floor((a(n-1)^(1/2)+5)²)` with `a(0)=1`
-/

namespace A016862.P46320542722280470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ) + 5) ^ 2⌋

end

end A016862.P46320542722280470

namespace A016862

/-- `floor((a(n-1)^(1/2)+5)²)` -/
def P46320542722280470.Spec : Prop :=
  ∀ n, P46320542722280470.a n = A016862 n

end A016862

/-! ## A016862.P15787090151559847441

`5*xor(2, ∑[abs(3-10*n)])-4`
-/

namespace A016862.P15787090151559847441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (10 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 4

end

end A016862.P15787090151559847441

namespace A016862

/-- `5*xor(2, ∑[abs(3-10*n)])-4` -/
def P15787090151559847441.Spec : Prop :=
  ∀ n, P15787090151559847441.a n = A016862 n

end A016862

/-! ## A016862.P3077497131341498977

`5*∑[ogf((7x+3x^2)/(1-2x+x^2))]+1`
-/

namespace A016862.P3077497131341498977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A016862.P3077497131341498977

namespace A016862

/-- `5*∑[ogf((7x+3x^2)/(1-2x+x^2))]+1` -/
def P3077497131341498977.Spec : Prop :=
  ∀ n, P3077497131341498977.a n = A016862 n

end A016862

/-! ## A016862.P18139082378837641636

`(4*n+n+1)^(2%∑[n+1])`
-/

namespace A016862.P18139082378837641636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + (n + 1)) ^ (2 % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016862.P18139082378837641636

namespace A016862

/-- `(4*n+n+1)^(2%∑[n+1])` -/
def P18139082378837641636.Spec : Prop :=
  ∀ n, (P18139082378837641636.a n : ℤ) = A016862 n

end A016862

/-! ## A016862.P343927732146564404

`sqrt(A016864(n))`
-/

namespace A016862.P343927732146564404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016864 n : ℝ)

end

end A016862.P343927732146564404

namespace A016862

/-- `sqrt(A016864(n))` -/
def P343927732146564404.Spec : Prop :=
  ∀ n, P343927732146564404.a n = (A016862 n : ℝ)

end A016862

/-! ## A016862.P9968004565914464128

`A017294(n)/4`
-/

namespace A016862.P9968004565914464128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017294 n : ℚ) / 4

end

end A016862.P9968004565914464128

namespace A016862

/-- `A017294(n)/4` -/
def P9968004565914464128.Spec : Prop :=
  ∀ n, P9968004565914464128.a n = (A016862 n : ℚ)

end A016862

/-! ## A016862.P5199059479890740101

`sqrt(sqrt(A016868(n)))`
-/

namespace A016862.P5199059479890740101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016868 n : ℝ))

end

end A016862.P5199059479890740101

namespace A016862

/-- `sqrt(sqrt(A016868(n)))` -/
def P5199059479890740101.Spec : Prop :=
  ∀ n, P5199059479890740101.a n = (A016862 n : ℝ)

end A016862

/-! ## A016862.P3095923300525834281

`sqrt(A017296(n))/4`
-/

namespace A016862.P3095923300525834281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017296 n : ℝ) / 4

end

end A016862.P3095923300525834281

namespace A016862

/-- `sqrt(A017296(n))/4` -/
def P3095923300525834281.Spec : Prop :=
  ∀ n, P3095923300525834281.a n = (A016862 n : ℝ)

end A016862

/-! ## A016862.P10731141558763192831

`5*A168668(n)+1`
-/

namespace A016862.P10731141558763192831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A168668 n + 1

end

end A016862.P10731141558763192831

namespace A016862

/-- `5*A168668(n)+1` -/
def P10731141558763192831.Spec : Prop :=
  ∀ n, P10731141558763192831.a n = A016862 n

end A016862

/-! ## A016862.P5240890404823070140

`A016866(n)^(1/3)`
-/

namespace A016862.P5240890404823070140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016866 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016862.P5240890404823070140

namespace A016862

/-- `A016866(n)^(1/3)` -/
def P5240890404823070140.Spec : Prop :=
  ∀ n, P5240890404823070140.a n = (A016862 n : ℝ)

end A016862

/-! ## A016862.P9279580053410946888

`A016863(n)^(2/3)`
-/

namespace A016862.P9279580053410946888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016863 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016862.P9279580053410946888

namespace A016862

/-- `A016863(n)^(2/3)` -/
def P9279580053410946888.Spec : Prop :=
  ∀ n, P9279580053410946888.a n = (A016862 n : ℝ)

end A016862

/-!
# A016863: a(n) = (5*n + 1)^3.

The programs for A016863, the canonical program `A016863.P8174085331725437101` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016863 has offset 0).

The definition of A016863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^3` (program `A016863.P8174085331725437101`, by `A016863.P8174085331725437101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016863.P8174085331725437101

`(5*n+1)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016863

/-- `(5*n+1)^3` -/
def P8174085331725437101.Spec : Prop :=
  ∀ n, (P8174085331725437101.a n : ℤ) = A016863 n

theorem P8174085331725437101.correct : P8174085331725437101.Spec := by
  intro n
  simp only [A016863]

end A016863

/-! ## A016863.P16134519924022454555

`A000578(A016861(n))`
-/

namespace A016863.P16134519924022454555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A016861 n).toNat

end

end A016863.P16134519924022454555

namespace A016863

/-- `A000578(A016861(n))` -/
def P16134519924022454555.Spec : Prop :=
  ∀ n, P16134519924022454555.a n = A016863 n

end A016863

/-! ## A016863.P9650150882674294994

`sqrt(abs(xor(5*n, -1)^6))`
-/

namespace A016863.P9650150882674294994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|Int.xor (5 * n : ℤ) (-1) ^ 6| : ℝ)

end

end A016863.P9650150882674294994

namespace A016863

/-- `sqrt(abs(xor(5*n, -1)^6))` -/
def P9650150882674294994.Spec : Prop :=
  ∀ n, P9650150882674294994.a n = (A016863 n : ℝ)

end A016863

/-! ## A016863.P15386783185725940515

`record[(n+1)^(gcd(5, n)-2)]`
-/

namespace A016863.P15386783185725940515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016863.P15386783185725940515

namespace A016863

/-- `record[(n+1)^(gcd(5, n)-2)]` -/
def P15386783185725940515.Spec : Prop :=
  ∀ n, P15386783185725940515.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P10001320512181401023

`record[(n+1)^(n+3-lcm(5, n))]`
-/

namespace A016863.P10001320512181401023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 3 : ℤ) - (Nat.lcm 5 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016863.P10001320512181401023

namespace A016863

/-- `record[(n+1)^(n+3-lcm(5, n))]` -/
def P10001320512181401023.Spec : Prop :=
  ∀ n, P10001320512181401023.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P8027852238837558162

`sqrt(A016866(n))`
-/

namespace A016863.P8027852238837558162
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016866 n : ℝ)

end

end A016863.P8027852238837558162

namespace A016863

/-- `sqrt(A016866(n))` -/
def P8027852238837558162.Spec : Prop :=
  ∀ n, P8027852238837558162.a n = (A016863 n : ℝ)

end A016863

/-! ## A016863.P8417718108904485653

`A017295(n)/8`
-/

namespace A016863.P8417718108904485653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017295 n : ℚ) / 8

end

end A016863.P8417718108904485653

namespace A016863

/-- `A017295(n)/8` -/
def P8417718108904485653.Spec : Prop :=
  ∀ n, P8417718108904485653.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P5413322668522385746

`sqrt(sqrt(A016872(n)))`
-/

namespace A016863.P5413322668522385746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016872 n : ℝ))

end

end A016863.P5413322668522385746

namespace A016863

/-- `sqrt(sqrt(A016872(n)))` -/
def P5413322668522385746.Spec : Prop :=
  ∀ n, P5413322668522385746.a n = (A016863 n : ℝ)

end A016863

/-! ## A016863.P6117387159134804957

`sqrt(A016862(n)^3)`
-/

namespace A016863.P6117387159134804957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016862 n ^ 3 : ℝ)

end

end A016863.P6117387159134804957

namespace A016863

/-- `sqrt(A016862(n)^3)` -/
def P6117387159134804957.Spec : Prop :=
  ∀ n, P6117387159134804957.a n = (A016863 n : ℝ)

end A016863

/-! ## A016863.P8828440290155683774

`A016861(n)*A016862(n)`
-/

namespace A016863.P8828440290155683774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016862 n

end

end A016863.P8828440290155683774

namespace A016863

/-- `A016861(n)*A016862(n)` -/
def P8828440290155683774.Spec : Prop :=
  ∀ n, P8828440290155683774.a n = A016863 n

end A016863

/-! ## A016863.P17052109031420422481

`A016864(n)/A016861(n)`
-/

namespace A016863.P17052109031420422481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n : ℚ) / (A016861 n : ℚ)

end

end A016863.P17052109031420422481

namespace A016863

/-- `A016864(n)/A016861(n)` -/
def P17052109031420422481.Spec : Prop :=
  ∀ n, P17052109031420422481.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P8313558306125761409

`A016865(n)/A016862(n)`
-/

namespace A016863.P8313558306125761409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016865 n : ℚ) / (A016862 n : ℚ)

end

end A016863.P8313558306125761409

namespace A016863

/-- `A016865(n)/A016862(n)` -/
def P8313558306125761409.Spec : Prop :=
  ∀ n, P8313558306125761409.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P12346599022737135809

`A016867(n)/A016864(n)`
-/

namespace A016863.P12346599022737135809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / (A016864 n : ℚ)

end

end A016863.P12346599022737135809

namespace A016863

/-- `A016867(n)/A016864(n)` -/
def P12346599022737135809.Spec : Prop :=
  ∀ n, P12346599022737135809.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P4715432557791519320

`∪[A017283(n), A017343(n)]`
-/

namespace A016863.P4715432557791519320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016863.P4715432557791519320

namespace A016863

/-- `∪[A017283(n), A017343(n)]` -/
def P4715432557791519320.Spec : Prop :=
  ∀ n, (P4715432557791519320.a n : ℤ) = A016863 n

end A016863

/-! ## A016863.P6080336182021573547

`A016864(n)²/A016865(n)`
-/

namespace A016863.P6080336182021573547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n ^ 2 : ℚ) / (A016865 n : ℚ)

end

end A016863.P6080336182021573547

namespace A016863

/-- `A016864(n)²/A016865(n)` -/
def P6080336182021573547.Spec : Prop :=
  ∀ n, P6080336182021573547.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P18306815306639215014

`A016865(n)/A016861(n)²`
-/

namespace A016863.P18306815306639215014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016865 n : ℚ) / (A016861 n ^ 2 : ℚ)

end

end A016863.P18306815306639215014

namespace A016863

/-- `A016865(n)/A016861(n)²` -/
def P18306815306639215014.Spec : Prop :=
  ∀ n, P18306815306639215014.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P13165953808495727765

`A016867(n)/A016862(n)²`
-/

namespace A016863.P13165953808495727765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / (A016862 n ^ 2 : ℚ)

end

end A016863.P13165953808495727765

namespace A016863

/-- `A016867(n)/A016862(n)²` -/
def P13165953808495727765.Spec : Prop :=
  ∀ n, P13165953808495727765.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P14928696593073877347

`A016864(n)/(A008587(n)+1)`
-/

namespace A016863.P14928696593073877347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n : ℚ) / (A008587 n + 1 : ℚ)

end

end A016863.P14928696593073877347

namespace A016863

/-- `A016864(n)/(A008587(n)+1)` -/
def P14928696593073877347.Spec : Prop :=
  ∀ n, P14928696593073877347.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P2010193844996412809

`A016862(n)/2*A017293(n)`
-/

namespace A016863.P2010193844996412809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016862 n : ℚ) / 2 * (A017293 n : ℚ)

end

end A016863.P2010193844996412809

namespace A016863

/-- `A016862(n)/2*A017293(n)` -/
def P2010193844996412809.Spec : Prop :=
  ∀ n, P2010193844996412809.a n = (A016863 n : ℚ)

end A016863

/-! ## A016863.P2263366243339094753

`A016867(n)/A016861(n)²²`
-/

namespace A016863.P2263366243339094753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / ((A016861 n ^ 2) ^ 2 : ℚ)

end

end A016863.P2263366243339094753

namespace A016863

/-- `A016867(n)/A016861(n)²²` -/
def P2263366243339094753.Spec : Prop :=
  ∀ n, P2263366243339094753.a n = (A016863 n : ℚ)

end A016863

/-!
# A016864: a(n) = (5*n + 1)^4.

The programs for A016864, the canonical program `A016864.P18068450066866692869` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016864 has offset 0).

The definition of A016864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^4` (program `A016864.P18068450066866692869`, by `A016864.P18068450066866692869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016864.P18068450066866692869

`(5*n+1)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016864

/-- `(5*n+1)^4` -/
def P18068450066866692869.Spec : Prop :=
  ∀ n, (P18068450066866692869.a n : ℤ) = A016864 n

theorem P18068450066866692869.correct : P18068450066866692869.Spec := by
  intro n
  simp only [A016864]

end A016864

/-! ## A016864.P3614329969541395057

`xor(5*n, -1)²²`
-/

namespace A016864.P3614329969541395057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (5 * n : ℤ) (-1) ^ 2) ^ 2

end

end A016864.P3614329969541395057

namespace A016864

/-- `xor(5*n, -1)²²` -/
def P3614329969541395057.Spec : Prop :=
  ∀ n, P3614329969541395057.a n = A016864 n

end A016864

/-! ## A016864.P12431100618350589454

`lt[lcm(5, 1-n), n]²²`
-/

namespace A016864.P12431100618350589454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016864.P12431100618350589454

namespace A016864

/-- `lt[lcm(5, 1-n), n]²²` -/
def P12431100618350589454.Spec : Prop :=
  ∀ n, (P12431100618350589454.a n : ℤ) = A016864 n

end A016864

/-! ## A016864.P574295556774452666

`record[(n+1)^(gcd(5, n)-1)]`
-/

namespace A016864.P574295556774452666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016864.P574295556774452666

namespace A016864

/-- `record[(n+1)^(gcd(5, n)-1)]` -/
def P574295556774452666.Spec : Prop :=
  ∀ n, P574295556774452666.a n = (A016864 n : ℚ)

end A016864

/-! ## A016864.P9139821223778082479

`(Δ[C(2*n, 2)]+n)²²`
-/

namespace A016864.P9139821223778082479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A016864.P9139821223778082479

namespace A016864

/-- `(Δ[C(2*n, 2)]+n)²²` -/
def P9139821223778082479.Spec : Prop :=
  ∀ n, P9139821223778082479.a n = A016864 n

end A016864

/-! ## A016864.P12605432369460303134

`(record[xor(3, n)]+n-2)²²`
-/

namespace A016864.P12605432369460303134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 2)) ^ 2) ^ 2

end

end A016864.P12605432369460303134

namespace A016864

/-- `(record[xor(3, n)]+n-2)²²` -/
def P12605432369460303134.Spec : Prop :=
  ∀ n, P12605432369460303134.a n = A016864 n

end A016864

/-! ## A016864.P14915167245878431964

`(root(a(n-1), 4)+5)²²` with `a(0)=1`
-/

namespace A016864.P14915167245878431964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((a (n - 1) ^ (1 / (4 : ℝ)) + 5) ^ 2) ^ 2

end

end A016864.P14915167245878431964

namespace A016864

/-- `(root(a(n-1), 4)+5)²²` -/
def P14915167245878431964.Spec : Prop :=
  ∀ n, P14915167245878431964.a n = (A016864 n : ℝ)

end A016864

/-! ## A016864.P2308772696371094803

`record[a(n-2)+5]²²` with `a(0)=1, a(1)=0`
-/

namespace A016864.P2308772696371094803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016864.P2308772696371094803

namespace A016864

/-- `record[a(n-2)+5]²²` -/
def P2308772696371094803.Spec : Prop :=
  ∀ n, (P2308772696371094803.a n : ℤ) = A016864 n

end A016864

/-! ## A016864.P10808216020033033181

`(sqrt(sqrt(a(n-1)))+5)²²` with `a(0)=1`
-/

namespace A016864.P10808216020033033181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((Real.sqrt (Real.sqrt (a (n - 1))) + 5) ^ 2) ^ 2

end

end A016864.P10808216020033033181

namespace A016864

/-- `(sqrt(sqrt(a(n-1)))+5)²²` -/
def P10808216020033033181.Spec : Prop :=
  ∀ n, P10808216020033033181.a n = (A016864 n : ℝ)

end A016864

/-! ## A016864.P13262918045888450376

`(lcm(2, Δ[n²])+n-1)²²`
-/

namespace A016864.P13262918045888450376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A016864.P13262918045888450376

namespace A016864

/-- `(lcm(2, Δ[n²])+n-1)²²` -/
def P13262918045888450376.Spec : Prop :=
  ∀ n, P13262918045888450376.a n = A016864 n

end A016864

/-! ## A016864.P5455904806745505927

`(a(n-1)^(1/4)+5)²²` with `a(0)=1`
-/

namespace A016864.P5455904806745505927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((a (n - 1) ^ ((1 : ℚ) / 4 : ℝ) + 5) ^ 2) ^ 2

end

end A016864.P5455904806745505927

namespace A016864

/-- `(a(n-1)^(1/4)+5)²²` -/
def P5455904806745505927.Spec : Prop :=
  ∀ n, P5455904806745505927.a n = (A016864 n : ℝ)

end A016864

/-! ## A016864.P13343004810818857306

`(2*lcm(n, 2*n)+n+1)²²`
-/

namespace A016864.P13343004810818857306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.lcm n (2 * n) + (n + 1)) ^ 2) ^ 2

end

end A016864.P13343004810818857306

namespace A016864

/-- `(2*lcm(n, 2*n)+n+1)²²` -/
def P13343004810818857306.Spec : Prop :=
  ∀ n, (P13343004810818857306.a n : ℤ) = A016864 n

theorem P13343004810818857306.correct : P13343004810818857306.Spec := by
  intro n
  simp only [A016864, Nat.add_sub_cancel, A016864.P13343004810818857306.a, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016864

/-! ## A016864.P8584585756602431548

`(C(n+1, n)+2*2*n)²²`
-/

namespace A016864.P8584585756602431548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + 2 * (2 * n)) ^ 2) ^ 2

end

end A016864.P8584585756602431548

namespace A016864

/-- `(C(n+1, n)+2*2*n)²²` -/
def P8584585756602431548.Spec : Prop :=
  ∀ n, (P8584585756602431548.a n : ℤ) = A016864 n

theorem P8584585756602431548.correct : P8584585756602431548.Spec := by
  intro n
  simp only [A016864, Nat.add_sub_cancel, A016864.P8584585756602431548.a, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016864

/-! ## A016864.P11552000359510593424

`(eq[n-1, and(n, n+1)]+n)²²`
-/

namespace A016864.P11552000359510593424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + n) ^ 2) ^ 2

end

end A016864.P11552000359510593424

namespace A016864

/-- `(eq[n-1, and(n, n+1)]+n)²²` -/
def P11552000359510593424.Spec : Prop :=
  ∀ n, (P11552000359510593424.a n : ℤ) = A016864 n

end A016864

/-! ## A016864.P10025316397352275067

`((1-n)²-lcm(n+1, n+2))²²`
-/

namespace A016864.P10025316397352275067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2 - (Nat.lcm (n + 1) (n + 2) : ℤ)) ^ 2) ^ 2

end

end A016864.P10025316397352275067

namespace A016864

/-- `((1-n)²-lcm(n+1, n+2))²²` -/
def P10025316397352275067.Spec : Prop :=
  ∀ n, P10025316397352275067.a n = A016864 n

end A016864

/-! ## A016864.P9997176350631502693

`(2*n*gcd(2, 2*n)+n+1)²²`
-/

namespace A016864.P9997176350631502693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n * Nat.gcd 2 (2 * n) + (n + 1)) ^ 2) ^ 2

end

end A016864.P9997176350631502693

namespace A016864

/-- `(2*n*gcd(2, 2*n)+n+1)²²` -/
def P9997176350631502693.Spec : Prop :=
  ∀ n, (P9997176350631502693.a n : ℤ) = A016864 n

theorem P9997176350631502693.correct : P9997176350631502693.Spec := by
  intro n
  simp only [A016864, Nat.add_sub_cancel, A016864.P9997176350631502693.a, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016864

/-! ## A016864.P4343156624090880338

`(2*and(2*n+1, 2*n)+n+1)²²`
-/

namespace A016864.P4343156624090880338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land (2 * n + 1) (2 * n) + (n + 1)) ^ 2) ^ 2

end

end A016864.P4343156624090880338

namespace A016864

/-- `(2*and(2*n+1, 2*n)+n+1)²²` -/
def P4343156624090880338.Spec : Prop :=
  ∀ n, (P4343156624090880338.a n : ℤ) = A016864 n

end A016864

/-! ## A016864.P15401074174873455197

`A016862(n)²`
-/

namespace A016864.P15401074174873455197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n ^ 2

end

end A016864.P15401074174873455197

namespace A016864

/-- `A016862(n)²` -/
def P15401074174873455197.Spec : Prop :=
  ∀ n, P15401074174873455197.a n = A016864 n

end A016864

/-! ## A016864.P17557195064701069130

`sqrt(A016868(n))`
-/

namespace A016864.P17557195064701069130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016868 n : ℝ)

end

end A016864.P17557195064701069130

namespace A016864

/-- `sqrt(A016868(n))` -/
def P17557195064701069130.Spec : Prop :=
  ∀ n, P17557195064701069130.a n = (A016864 n : ℝ)

end A016864

/-! ## A016864.P5969118223090960299

`A016861(n)²²`
-/

namespace A016864.P5969118223090960299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n ^ 2) ^ 2

end

end A016864.P5969118223090960299

namespace A016864

/-- `A016861(n)²²` -/
def P5969118223090960299.Spec : Prop :=
  ∀ n, P5969118223090960299.a n = A016864 n

end A016864

/-!
# A016865: a(n) = (5n+1)^5.

The programs for A016865, the canonical program `A016865.P15075696711859102256` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016865 has offset 0).

The definition of A016865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^5` (program `A016865.P15075696711859102256`, by `A016865.P15075696711859102256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016865.P15075696711859102256

`(5*n+1)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016865

/-- `(5*n+1)^5` -/
def P15075696711859102256.Spec : Prop :=
  ∀ n, (P15075696711859102256.a n : ℤ) = A016865 n

theorem P15075696711859102256.correct : P15075696711859102256.Spec := by
  intro n
  simp only [A016865]

end A016865

/-! ## A016865.P17114801535718292944

`record[(gcd(5, 1-n)+n)^5]`
-/

namespace A016865.P17114801535718292944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (1 - (n : ℤ)) + n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016865.P17114801535718292944

namespace A016865

/-- `record[(gcd(5, 1-n)+n)^5]` -/
def P17114801535718292944.Spec : Prop :=
  ∀ n, (P17114801535718292944.a n : ℤ) = A016865 n

end A016865

/-! ## A016865.P15736992042344313946

`sqrt(A016870(n))`
-/

namespace A016865.P15736992042344313946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016870 n : ℝ)

end

end A016865.P15736992042344313946

namespace A016865

/-- `sqrt(A016870(n))` -/
def P15736992042344313946.Spec : Prop :=
  ∀ n, P15736992042344313946.a n = (A016865 n : ℝ)

end A016865

/-! ## A016865.P14543170020181727711

`sqrt(A016862(n)^5)`
-/

namespace A016865.P14543170020181727711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016862 n ^ 5 : ℝ)

end

end A016865.P14543170020181727711

namespace A016865

/-- `sqrt(A016862(n)^5)` -/
def P14543170020181727711.Spec : Prop :=
  ∀ n, P14543170020181727711.a n = (A016865 n : ℝ)

end A016865

/-! ## A016865.P11102313237287054689

`abs((A016969(n)-4-n)^5)`
-/

namespace A016865.P11102313237287054689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016969 n - 4 - (n : ℤ)) ^ 5|

end

end A016865.P11102313237287054689

namespace A016865

/-- `abs((A016969(n)-4-n)^5)` -/
def P11102313237287054689.Spec : Prop :=
  ∀ n, P11102313237287054689.a n = A016865 n

end A016865

/-! ## A016865.P12937808423853220091

`(4*n+1+n)*(1-A016873(n))²²`
-/

namespace A016865.P12937808423853220091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 + n : ℤ) * ((1 - A016873 n) ^ 2) ^ 2

end

end A016865.P12937808423853220091

namespace A016865

/-- `(4*n+1+n)*(1-A016873(n))²²` -/
def P12937808423853220091.Spec : Prop :=
  ∀ n, P12937808423853220091.a n = A016865 n

end A016865

/-! ## A016865.P5350739271352397132

`A016861(n)*A016864(n)`
-/

namespace A016865.P5350739271352397132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016864 n

end

end A016865.P5350739271352397132

namespace A016865

/-- `A016861(n)*A016864(n)` -/
def P5350739271352397132.Spec : Prop :=
  ∀ n, P5350739271352397132.a n = A016865 n

end A016865

/-! ## A016865.P16620227436134489119

`A016862(n)*A016863(n)`
-/

namespace A016865.P16620227436134489119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016863 n

end

end A016865.P16620227436134489119

namespace A016865

/-- `A016862(n)*A016863(n)` -/
def P16620227436134489119.Spec : Prop :=
  ∀ n, P16620227436134489119.a n = A016865 n

end A016865

/-! ## A016865.P17317252337104159007

`A016866(n)/A016861(n)`
-/

namespace A016865.P17317252337104159007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016866 n : ℚ) / (A016861 n : ℚ)

end

end A016865.P17317252337104159007

namespace A016865

/-- `A016866(n)/A016861(n)` -/
def P17317252337104159007.Spec : Prop :=
  ∀ n, P17317252337104159007.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P8258296828694218541

`A016867(n)/A016862(n)`
-/

namespace A016865.P8258296828694218541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / (A016862 n : ℚ)

end

end A016865.P8258296828694218541

namespace A016865

/-- `A016867(n)/A016862(n)` -/
def P8258296828694218541.Spec : Prop :=
  ∀ n, P8258296828694218541.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P13181948218999538424

`∪[A017285(n), A017345(n)]`
-/

namespace A016865.P13181948218999538424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016865.P13181948218999538424

namespace A016865

/-- `∪[A017285(n), A017345(n)]` -/
def P13181948218999538424.Spec : Prop :=
  ∀ n, (P13181948218999538424.a n : ℤ) = A016865 n

end A016865

/-! ## A016865.P14097204478368048521

`A016861(n)²*A016863(n)`
-/

namespace A016865.P14097204478368048521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n ^ 2 * A016863 n

end

end A016865.P14097204478368048521

namespace A016865

/-- `A016861(n)²*A016863(n)` -/
def P14097204478368048521.Spec : Prop :=
  ∀ n, P14097204478368048521.a n = A016865 n

end A016865

/-! ## A016865.P7124022668174412479

`A016862(n)²*A016861(n)`
-/

namespace A016865.P7124022668174412479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n ^ 2 * A016861 n

end

end A016865.P7124022668174412479

namespace A016865

/-- `A016862(n)²*A016861(n)` -/
def P7124022668174412479.Spec : Prop :=
  ∀ n, P7124022668174412479.a n = A016865 n

end A016865

/-! ## A016865.P10699803881948086946

`A016864(n)²/A016863(n)`
-/

namespace A016865.P10699803881948086946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n ^ 2 : ℚ) / (A016863 n : ℚ)

end

end A016865.P10699803881948086946

namespace A016865

/-- `A016864(n)²/A016863(n)` -/
def P10699803881948086946.Spec : Prop :=
  ∀ n, P10699803881948086946.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P1591225974838463733

`A016867(n)/A016861(n)²`
-/

namespace A016865.P1591225974838463733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / (A016861 n ^ 2 : ℚ)

end

end A016865.P1591225974838463733

namespace A016865

/-- `A016867(n)/A016861(n)²` -/
def P1591225974838463733.Spec : Prop :=
  ∀ n, P1591225974838463733.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P12699410257738381563

`(A008587(n)+1)*A016864(n)`
-/

namespace A016865.P12699410257738381563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008587 n + 1) * A016864 n

end

end A016865.P12699410257738381563

namespace A016865

/-- `(A008587(n)+1)*A016864(n)` -/
def P12699410257738381563.Spec : Prop :=
  ∀ n, P12699410257738381563.a n = A016865 n

end A016865

/-! ## A016865.P17401723490417235111

`A016863(n)²²/A016867(n)`
-/

namespace A016865.P17401723490417235111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016863 n ^ 2) ^ 2 : ℚ) / (A016867 n : ℚ)

end

end A016865.P17401723490417235111

namespace A016865

/-- `A016863(n)²²/A016867(n)` -/
def P17401723490417235111.Spec : Prop :=
  ∀ n, P17401723490417235111.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P15210954614677993719

`A016869(n)/A016861(n)²²`
-/

namespace A016865.P15210954614677993719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016869 n : ℚ) / ((A016861 n ^ 2) ^ 2 : ℚ)

end

end A016865.P15210954614677993719

namespace A016865

/-- `A016869(n)/A016861(n)²²` -/
def P15210954614677993719.Spec : Prop :=
  ∀ n, P15210954614677993719.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P15411400115944261488

`2*A016863(n)²/A017293(n)`
-/

namespace A016865.P15411400115944261488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016863 n ^ 2 : ℚ) / (A017293 n : ℚ))

end

end A016865.P15411400115944261488

namespace A016865

/-- `2*A016863(n)²/A017293(n)` -/
def P15411400115944261488.Spec : Prop :=
  ∀ n, P15411400115944261488.a n = (A016865 n : ℚ)

end A016865

/-! ## A016865.P4884884124226544208

`A016862(n)²/2*A017293(n)`
-/

namespace A016865.P4884884124226544208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016862 n ^ 2 : ℚ) / 2 * (A017293 n : ℚ)

end

end A016865.P4884884124226544208

namespace A016865

/-- `A016862(n)²/2*A017293(n)` -/
def P4884884124226544208.Spec : Prop :=
  ∀ n, P4884884124226544208.a n = (A016865 n : ℚ)

end A016865

/-!
# A016866: a(n) = (5n+1)^6.

The programs for A016866, the canonical program `A016866.P4617952236870524676` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016866 has offset 0).

The definition of A016866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^6` (program `A016866.P4617952236870524676`, by `A016866.P4617952236870524676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016866.P4617952236870524676

`(5*n+1)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016866

/-- `(5*n+1)^6` -/
def P4617952236870524676.Spec : Prop :=
  ∀ n, (P4617952236870524676.a n : ℤ) = A016866 n

theorem P4617952236870524676.correct : P4617952236870524676.Spec := by
  intro n
  simp only [A016866]

end A016866

/-! ## A016866.P16980546694078494536

`(xor(5*n, -1)^3)²`
-/

namespace A016866.P16980546694078494536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (5 * n : ℤ) (-1) ^ 3) ^ 2

end

end A016866.P16980546694078494536

namespace A016866

/-- `(xor(5*n, -1)^3)²` -/
def P16980546694078494536.Spec : Prop :=
  ∀ n, P16980546694078494536.a n = A016866 n

end A016866

/-! ## A016866.P11007425535442317264

`((xor(1, 6*n)-n)^3)²`
-/

namespace A016866.P11007425535442317264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 (6 * n) : ℤ) - (n : ℤ)) ^ 3) ^ 2

end

end A016866.P11007425535442317264

namespace A016866

/-- `((xor(1, 6*n)-n)^3)²` -/
def P11007425535442317264.Spec : Prop :=
  ∀ n, P11007425535442317264.a n = A016866 n

end A016866

/-! ## A016866.P13350657879767678251

`abs((xor(1, 6*n)-n)^6)`
-/

namespace A016866.P13350657879767678251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 1 (6 * n) : ℤ) - (n : ℤ)) ^ 6|

end

end A016866.P13350657879767678251

namespace A016866

/-- `abs((xor(1, 6*n)-n)^6)` -/
def P13350657879767678251.Spec : Prop :=
  ∀ n, P13350657879767678251.a n = A016866 n

end A016866

/-! ## A016866.P1193917577989934340

`record[(gcd(5, 1-n)+n)^6]`
-/

namespace A016866.P1193917577989934340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (1 - (n : ℤ)) + n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016866.P1193917577989934340

namespace A016866

/-- `record[(gcd(5, 1-n)+n)^6]` -/
def P1193917577989934340.Spec : Prop :=
  ∀ n, (P1193917577989934340.a n : ℤ) = A016866 n

end A016866

/-! ## A016866.P14003713200472057363

`(lt[lcm(5, 1-n), n]^3)²`
-/

namespace A016866.P14003713200472057363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016866.P14003713200472057363

namespace A016866

/-- `(lt[lcm(5, 1-n), n]^3)²` -/
def P14003713200472057363.Spec : Prop :=
  ∀ n, (P14003713200472057363.a n : ℤ) = A016866 n

end A016866

/-! ## A016866.P1539686047695183810

`A016863(n)²`
-/

namespace A016866.P1539686047695183810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n ^ 2

end

end A016866.P1539686047695183810

namespace A016866

/-- `A016863(n)²` -/
def P1539686047695183810.Spec : Prop :=
  ∀ n, P1539686047695183810.a n = A016866 n

end A016866

/-! ## A016866.P4177113550253793022

`sqrt(A016872(n))`
-/

namespace A016866.P4177113550253793022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016872 n : ℝ)

end

end A016866.P4177113550253793022

namespace A016866

/-- `sqrt(A016872(n))` -/
def P4177113550253793022.Spec : Prop :=
  ∀ n, P4177113550253793022.a n = (A016866 n : ℝ)

end A016866

/-! ## A016866.P2326220197917053409

`(A016861(n)^3)²`
-/

namespace A016866.P2326220197917053409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n ^ 3) ^ 2

end

end A016866.P2326220197917053409

namespace A016866

/-- `(A016861(n)^3)²` -/
def P2326220197917053409.Spec : Prop :=
  ∀ n, P2326220197917053409.a n = A016866 n

end A016866

/-! ## A016866.P487500165035245696

`sqrt(A016864(n)^3)`
-/

namespace A016866.P487500165035245696
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016864 n ^ 3 : ℝ)

end

end A016866.P487500165035245696

namespace A016866

/-- `sqrt(A016864(n)^3)` -/
def P487500165035245696.Spec : Prop :=
  ∀ n, P487500165035245696.a n = (A016866 n : ℝ)

end A016866

/-! ## A016866.P13292747333159853028

`(Δ[A000566(n)]^3)²`
-/

namespace A016866.P13292747333159853028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016866.P13292747333159853028

namespace A016866

/-- `(Δ[A000566(n)]^3)²` -/
def P13292747333159853028.Spec : Prop :=
  ∀ n, P13292747333159853028.a n = A016866 n

end A016866

/-! ## A016866.P10996268885708007649

`(Δ[A192136(n)]^3)²`
-/

namespace A016866.P10996268885708007649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016866.P10996268885708007649

namespace A016866

/-- `(Δ[A192136(n)]^3)²` -/
def P10996268885708007649.Spec : Prop :=
  ∀ n, P10996268885708007649.a n = A016866 n

end A016866

/-! ## A016866.P297540119156051218

`((A016873(n)-1)^3)²`
-/

namespace A016866.P297540119156051218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n - 1) ^ 3) ^ 2

end

end A016866.P297540119156051218

namespace A016866

/-- `((A016873(n)-1)^3)²` -/
def P297540119156051218.Spec : Prop :=
  ∀ n, P297540119156051218.a n = A016866 n

end A016866

/-! ## A016866.P13753401443211751981

`A016861(n)*A016865(n)`
-/

namespace A016866.P13753401443211751981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016865 n

end

end A016866.P13753401443211751981

namespace A016866

/-- `A016861(n)*A016865(n)` -/
def P13753401443211751981.Spec : Prop :=
  ∀ n, P13753401443211751981.a n = A016866 n

end A016866

/-! ## A016866.P4367206573442192251

`A016862(n)*A016864(n)`
-/

namespace A016866.P4367206573442192251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016864 n

end

end A016866.P4367206573442192251

namespace A016866

/-- `A016862(n)*A016864(n)` -/
def P4367206573442192251.Spec : Prop :=
  ∀ n, P4367206573442192251.a n = A016866 n

end A016866

/-! ## A016866.P16894013676490560251

`A016867(n)/A016861(n)`
-/

namespace A016866.P16894013676490560251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 n : ℚ) / (A016861 n : ℚ)

end

end A016866.P16894013676490560251

namespace A016866

/-- `A016867(n)/A016861(n)` -/
def P16894013676490560251.Spec : Prop :=
  ∀ n, P16894013676490560251.a n = (A016866 n : ℚ)

end A016866

/-! ## A016866.P7041685785226537639

`A016868(n)/A016862(n)`
-/

namespace A016866.P7041685785226537639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016868 n : ℚ) / (A016862 n : ℚ)

end

end A016866.P7041685785226537639

namespace A016866

/-- `A016868(n)/A016862(n)` -/
def P7041685785226537639.Spec : Prop :=
  ∀ n, P7041685785226537639.a n = (A016866 n : ℚ)

end A016866

/-! ## A016866.P2329732833652247696

`∪[A017286(n), A017346(n)]`
-/

namespace A016866.P2329732833652247696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016866.P2329732833652247696

namespace A016866

/-- `∪[A017286(n), A017346(n)]` -/
def P2329732833652247696.Spec : Prop :=
  ∀ n, (P2329732833652247696.a n : ℤ) = A016866 n

end A016866

/-! ## A016866.P6041918535501833642

`(A016861(n)*A016862(n))²`
-/

namespace A016866.P6041918535501833642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n * A016862 n) ^ 2

end

end A016866.P6041918535501833642

namespace A016866

/-- `(A016861(n)*A016862(n))²` -/
def P6041918535501833642.Spec : Prop :=
  ∀ n, P6041918535501833642.a n = A016866 n

end A016866

/-! ## A016866.P6294504571327400653

`A016861(n)²*A016864(n)`
-/

namespace A016866.P6294504571327400653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n ^ 2 * A016864 n

end

end A016866.P6294504571327400653

namespace A016866

/-- `A016861(n)²*A016864(n)` -/
def P6294504571327400653.Spec : Prop :=
  ∀ n, P6294504571327400653.a n = A016866 n

end A016866

/-!
# A016867: a(n) = (5*n + 1)^7.

The programs for A016867, the canonical program `A016867.P4252928174738916812` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016867 has offset 0).

The definition of A016867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^7` (program `A016867.P4252928174738916812`, by `A016867.P4252928174738916812.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016867.P4252928174738916812

`(5*n+1)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016867

/-- `(5*n+1)^7` -/
def P4252928174738916812.Spec : Prop :=
  ∀ n, (P4252928174738916812.a n : ℤ) = A016867 n

theorem P4252928174738916812.correct : P4252928174738916812.Spec := by
  intro n
  simp only [A016867]

end A016867

/-! ## A016867.P8931558662955062281

`-xor(5*n, -1)^7`
-/

namespace A016867.P8931558662955062281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (5 * n : ℤ) (-1) ^ 7)

end

end A016867.P8931558662955062281

namespace A016867

/-- `-xor(5*n, -1)^7` -/
def P8931558662955062281.Spec : Prop :=
  ∀ n, P8931558662955062281.a n = A016867 n

end A016867

/-! ## A016867.P8005224787660303288

`abs((xor(1, 6*n)-n)^7)`
-/

namespace A016867.P8005224787660303288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 1 (6 * n) : ℤ) - (n : ℤ)) ^ 7|

end

end A016867.P8005224787660303288

namespace A016867

/-- `abs((xor(1, 6*n)-n)^7)` -/
def P8005224787660303288.Spec : Prop :=
  ∀ n, P8005224787660303288.a n = A016867 n

end A016867

/-! ## A016867.P9234916071748077564

`record[(gcd(5, 1-n)+n)^7]`
-/

namespace A016867.P9234916071748077564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (1 - (n : ℤ)) + n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016867.P9234916071748077564

namespace A016867

/-- `record[(gcd(5, 1-n)+n)^7]` -/
def P9234916071748077564.Spec : Prop :=
  ∀ n, (P9234916071748077564.a n : ℤ) = A016867 n

end A016867

/-! ## A016867.P8238853533745147980

`record[(n+1-(n%5)²)^7]`
-/

namespace A016867.P8238853533745147980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (((n % 5) ^ 2 : ℕ) : ℤ)) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016867.P8238853533745147980

namespace A016867

/-- `record[(n+1-(n%5)²)^7]` -/
def P8238853533745147980.Spec : Prop :=
  ∀ n, P8238853533745147980.a n = A016867 n

end A016867

/-! ## A016867.P5481191993381733456

`abs(1-(A016873(n)-1)^7)+1`
-/

namespace A016867.P5481191993381733456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A016873 n - 1) ^ 7| + 1

end

end A016867.P5481191993381733456

namespace A016867

/-- `abs(1-(A016873(n)-1)^7)+1` -/
def P5481191993381733456.Spec : Prop :=
  ∀ n, P5481191993381733456.a n = A016867 n

end A016867

/-! ## A016867.P14679554925073323357

`A016861(n)*A016866(n)`
-/

namespace A016867.P14679554925073323357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016866 n

end

end A016867.P14679554925073323357

namespace A016867

/-- `A016861(n)*A016866(n)` -/
def P14679554925073323357.Spec : Prop :=
  ∀ n, P14679554925073323357.a n = A016867 n

end A016867

/-! ## A016867.P17433238380567294703

`A016862(n)*A016865(n)`
-/

namespace A016867.P17433238380567294703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016865 n

end

end A016867.P17433238380567294703

namespace A016867

/-- `A016862(n)*A016865(n)` -/
def P17433238380567294703.Spec : Prop :=
  ∀ n, P17433238380567294703.a n = A016867 n

end A016867

/-! ## A016867.P977037451761342943

`A016863(n)*A016864(n)`
-/

namespace A016867.P977037451761342943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A016864 n

end

end A016867.P977037451761342943

namespace A016867

/-- `A016863(n)*A016864(n)` -/
def P977037451761342943.Spec : Prop :=
  ∀ n, P977037451761342943.a n = A016867 n

end A016867

/-! ## A016867.P15511587486033971898

`A016868(n)/A016861(n)`
-/

namespace A016867.P15511587486033971898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016868 n : ℚ) / (A016861 n : ℚ)

end

end A016867.P15511587486033971898

namespace A016867

/-- `A016868(n)/A016861(n)` -/
def P15511587486033971898.Spec : Prop :=
  ∀ n, P15511587486033971898.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P6881039705245838701

`A016861(n)²*A016865(n)`
-/

namespace A016867.P6881039705245838701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n ^ 2 * A016865 n

end

end A016867.P6881039705245838701

namespace A016867

/-- `A016861(n)²*A016865(n)` -/
def P6881039705245838701.Spec : Prop :=
  ∀ n, P6881039705245838701.a n = A016867 n

end A016867

/-! ## A016867.P14988660883808916150

`A016862(n)²*A016863(n)`
-/

namespace A016867.P14988660883808916150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n ^ 2 * A016863 n

end

end A016867.P14988660883808916150

namespace A016867

/-- `A016862(n)²*A016863(n)` -/
def P14988660883808916150.Spec : Prop :=
  ∀ n, P14988660883808916150.a n = A016867 n

end A016867

/-! ## A016867.P17136766737822489594

`A016863(n)²*A016861(n)`
-/

namespace A016867.P17136766737822489594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n ^ 2 * A016861 n

end

end A016867.P17136766737822489594

namespace A016867

/-- `A016863(n)²*A016861(n)` -/
def P17136766737822489594.Spec : Prop :=
  ∀ n, P17136766737822489594.a n = A016867 n

end A016867

/-! ## A016867.P9388416606806855201

`A016864(n)²/A016861(n)`
-/

namespace A016867.P9388416606806855201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n ^ 2 : ℚ) / (A016861 n : ℚ)

end

end A016867.P9388416606806855201

namespace A016867

/-- `A016864(n)²/A016861(n)` -/
def P9388416606806855201.Spec : Prop :=
  ∀ n, P9388416606806855201.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P17148243532225234324

`A016865(n)²/A016863(n)`
-/

namespace A016867.P17148243532225234324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016865 n ^ 2 : ℚ) / (A016863 n : ℚ)

end

end A016867.P17148243532225234324

namespace A016867

/-- `A016865(n)²/A016863(n)` -/
def P17148243532225234324.Spec : Prop :=
  ∀ n, P17148243532225234324.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P16091949227474412317

`A016869(n)/A016861(n)²`
-/

namespace A016867.P16091949227474412317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016869 n : ℚ) / (A016861 n ^ 2 : ℚ)

end

end A016867.P16091949227474412317

namespace A016867

/-- `A016869(n)/A016861(n)²` -/
def P16091949227474412317.Spec : Prop :=
  ∀ n, P16091949227474412317.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P9068926983312803209

`A016862(n)²²/A016861(n)`
-/

namespace A016867.P9068926983312803209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016862 n ^ 2) ^ 2 : ℚ) / (A016861 n : ℚ)

end

end A016867.P9068926983312803209

namespace A016867

/-- `A016862(n)²²/A016861(n)` -/
def P9068926983312803209.Spec : Prop :=
  ∀ n, P9068926983312803209.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P1879741879973961042

`A016864(n)²/(A008587(n)+1)`
-/

namespace A016867.P1879741879973961042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 n ^ 2 : ℚ) / (A008587 n + 1 : ℚ)

end

end A016867.P1879741879973961042

namespace A016867

/-- `A016864(n)²/(A008587(n)+1)` -/
def P1879741879973961042.Spec : Prop :=
  ∀ n, P1879741879973961042.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P13711564440293123759

`A016863(n)²/2*A017293(n)`
-/

namespace A016867.P13711564440293123759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016863 n ^ 2 : ℚ) / 2 * (A017293 n : ℚ)

end

end A016867.P13711564440293123759

namespace A016867

/-- `A016863(n)²/2*A017293(n)` -/
def P13711564440293123759.Spec : Prop :=
  ∀ n, P13711564440293123759.a n = (A016867 n : ℚ)

end A016867

/-! ## A016867.P16663530507193172143

`A016861(n)*A016862(n)*A016864(n)`
-/

namespace A016867.P16663530507193172143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016862 n * A016864 n

end

end A016867.P16663530507193172143

namespace A016867

/-- `A016861(n)*A016862(n)*A016864(n)` -/
def P16663530507193172143.Spec : Prop :=
  ∀ n, P16663530507193172143.a n = A016867 n

end A016867

/-!
# A016868: a(n) = (5n+1)^8.

The programs for A016868, the canonical program `A016868.P5827958273917566203` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016868 has offset 0).

The definition of A016868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^8` (program `A016868.P5827958273917566203`, by `A016868.P5827958273917566203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016868.P5827958273917566203

`(5*n+1)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016868

/-- `(5*n+1)^8` -/
def P5827958273917566203.Spec : Prop :=
  ∀ n, (P5827958273917566203.a n : ℤ) = A016868 n

theorem P5827958273917566203.correct : P5827958273917566203.Spec := by
  intro n
  simp only [A016868]

end A016868

/-! ## A016868.P9097187726027248892

`(lt[lcm(5, 1-n), n]^4)²`
-/

namespace A016868.P9097187726027248892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016868.P9097187726027248892

namespace A016868

/-- `(lt[lcm(5, 1-n), n]^4)²` -/
def P9097187726027248892.Spec : Prop :=
  ∀ n, (P9097187726027248892.a n : ℤ) = A016868 n

end A016868

/-! ## A016868.P14226423457885247883

`(Δ[C(2*n, 2)]+n)²²²`
-/

namespace A016868.P14226423457885247883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016868.P14226423457885247883

namespace A016868

/-- `(Δ[C(2*n, 2)]+n)²²²` -/
def P14226423457885247883.Spec : Prop :=
  ∀ n, P14226423457885247883.a n = A016868 n

end A016868

/-! ## A016868.P9445883255030979378

`(lcm(2, 2*n+1)+n-1)²²²`
-/

namespace A016868.P9445883255030979378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 2 (2 * n + 1) : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2) ^ 2

end

end A016868.P9445883255030979378

namespace A016868

/-- `(lcm(2, 2*n+1)+n-1)²²²` -/
def P9445883255030979378.Spec : Prop :=
  ∀ n, P9445883255030979378.a n = A016868 n

end A016868

/-! ## A016868.P694616130312370313

`((1-n)²-lcm(n+1, n+2))²²²`
-/

namespace A016868.P694616130312370313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((1 - (n : ℤ)) ^ 2 - (Nat.lcm (n + 1) (n + 2) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016868.P694616130312370313

namespace A016868

/-- `((1-n)²-lcm(n+1, n+2))²²²` -/
def P694616130312370313.Spec : Prop :=
  ∀ n, P694616130312370313.a n = A016868 n

end A016868

/-! ## A016868.P1278237931357060772

`A016864(n)²`
-/

namespace A016868.P1278237931357060772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n ^ 2

end

end A016868.P1278237931357060772

namespace A016868

/-- `A016864(n)²` -/
def P1278237931357060772.Spec : Prop :=
  ∀ n, P1278237931357060772.a n = A016868 n

end A016868

/-! ## A016868.P6198488900217870676

`A016862(n)²²`
-/

namespace A016868.P6198488900217870676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 n ^ 2) ^ 2

end

end A016868.P6198488900217870676

namespace A016868

/-- `A016862(n)²²` -/
def P6198488900217870676.Spec : Prop :=
  ∀ n, P6198488900217870676.a n = A016868 n

end A016868

/-! ## A016868.P16025424147009416945

`(A016861(n)^4)²`
-/

namespace A016868.P16025424147009416945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n ^ 4) ^ 2

end

end A016868.P16025424147009416945

namespace A016868

/-- `(A016861(n)^4)²` -/
def P16025424147009416945.Spec : Prop :=
  ∀ n, P16025424147009416945.a n = A016868 n

end A016868

/-! ## A016868.P9135581393660485118

`Δ[A000566(n)]²²²`
-/

namespace A016868.P9135581393660485118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016868.P9135581393660485118

namespace A016868

/-- `Δ[A000566(n)]²²²` -/
def P9135581393660485118.Spec : Prop :=
  ∀ n, P9135581393660485118.a n = A016868 n

end A016868

/-! ## A016868.P12168560509122988981

`Δ[A192136(n)]²²²`
-/

namespace A016868.P12168560509122988981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016868.P12168560509122988981

namespace A016868

/-- `Δ[A192136(n)]²²²` -/
def P12168560509122988981.Spec : Prop :=
  ∀ n, P12168560509122988981.a n = A016868 n

end A016868

/-! ## A016868.P10432443061336413797

`(A008587(n)+1)²²²`
-/

namespace A016868.P10432443061336413797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008587 n + 1) ^ 2) ^ 2) ^ 2

end

end A016868.P10432443061336413797

namespace A016868

/-- `(A008587(n)+1)²²²` -/
def P10432443061336413797.Spec : Prop :=
  ∀ n, P10432443061336413797.a n = A016868 n

end A016868

/-! ## A016868.P3864670339034166187

`(1-A016873(n))²²²`
-/

namespace A016868.P3864670339034166187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016873 n) ^ 2) ^ 2) ^ 2

end

end A016868.P3864670339034166187

namespace A016868

/-- `(1-A016873(n))²²²` -/
def P3864670339034166187.Spec : Prop :=
  ∀ n, P3864670339034166187.a n = A016868 n

end A016868

/-! ## A016868.P4615262686412960765

`(2-A016885(n))²²²`
-/

namespace A016868.P4615262686412960765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A016885 n) ^ 2) ^ 2) ^ 2

end

end A016868.P4615262686412960765

namespace A016868

/-- `(2-A016885(n))²²²` -/
def P4615262686412960765.Spec : Prop :=
  ∀ n, P4615262686412960765.a n = A016868 n

end A016868

/-! ## A016868.P8295776322037044506

`(A017293(n)/2)²²²`
-/

namespace A016868.P8295776322037044506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017293 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016868.P8295776322037044506

namespace A016868

/-- `(A017293(n)/2)²²²` -/
def P8295776322037044506.Spec : Prop :=
  ∀ n, P8295776322037044506.a n = (A016868 n : ℚ)

end A016868

/-! ## A016868.P4220024896170109437

`(A016813(n)+n)²²²`
-/

namespace A016868.P4220024896170109437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016813 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016868.P4220024896170109437

namespace A016868

/-- `(A016813(n)+n)²²²` -/
def P4220024896170109437.Spec : Prop :=
  ∀ n, P4220024896170109437.a n = A016868 n

end A016868

/-! ## A016868.P542146937769151747

`(n-A016921(n))²²²`
-/

namespace A016868.P542146937769151747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A016921 n) ^ 2) ^ 2) ^ 2

end

end A016868.P542146937769151747

namespace A016868

/-- `(n-A016921(n))²²²` -/
def P542146937769151747.Spec : Prop :=
  ∀ n, P542146937769151747.a n = A016868 n

end A016868

/-! ## A016868.P479643925428712344

`(A016777(n)+2*n)²²²`
-/

namespace A016868.P479643925428712344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016777 n + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016868.P479643925428712344

namespace A016868

/-- `(A016777(n)+2*n)²²²` -/
def P479643925428712344.Spec : Prop :=
  ∀ n, P479643925428712344.a n = A016868 n

end A016868

/-! ## A016868.P11304506158758331352

`A016861(n)*A016867(n)`
-/

namespace A016868.P11304506158758331352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016867 n

end

end A016868.P11304506158758331352

namespace A016868

/-- `A016861(n)*A016867(n)` -/
def P11304506158758331352.Spec : Prop :=
  ∀ n, P11304506158758331352.a n = A016868 n

end A016868

/-! ## A016868.P14175548841564477646

`A016862(n)*A016866(n)`
-/

namespace A016868.P14175548841564477646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016866 n

end

end A016868.P14175548841564477646

namespace A016868

/-- `A016862(n)*A016866(n)` -/
def P14175548841564477646.Spec : Prop :=
  ∀ n, P14175548841564477646.a n = A016868 n

end A016868

/-! ## A016868.P8704855604876479066

`A016863(n)*A016865(n)`
-/

namespace A016868.P8704855604876479066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A016865 n

end

end A016868.P8704855604876479066

namespace A016868

/-- `A016863(n)*A016865(n)` -/
def P8704855604876479066.Spec : Prop :=
  ∀ n, P8704855604876479066.a n = A016868 n

end A016868

/-!
# A016869: a(n) = (5n+1)^9.

The programs for A016869, the canonical program `A016869.P8261051290482480769` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016869 has offset 0).

The definition of A016869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^9` (program `A016869.P8261051290482480769`, by `A016869.P8261051290482480769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016869.P8261051290482480769

`(5*n+1)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016869

/-- `(5*n+1)^9` -/
def P8261051290482480769.Spec : Prop :=
  ∀ n, (P8261051290482480769.a n : ℤ) = A016869 n

theorem P8261051290482480769.correct : P8261051290482480769.Spec := by
  intro n
  simp only [A016869]

end A016869

/-! ## A016869.P10322143751589255200

`A016861(n)*A016868(n)`
-/

namespace A016869.P10322143751589255200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016868 n

end

end A016869.P10322143751589255200

namespace A016869

/-- `A016861(n)*A016868(n)` -/
def P10322143751589255200.Spec : Prop :=
  ∀ n, P10322143751589255200.a n = A016869 n

end A016869

/-! ## A016869.P396957673357014155

`A016862(n)*A016867(n)`
-/

namespace A016869.P396957673357014155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016867 n

end

end A016869.P396957673357014155

namespace A016869

/-- `A016862(n)*A016867(n)` -/
def P396957673357014155.Spec : Prop :=
  ∀ n, P396957673357014155.a n = A016869 n

end A016869

/-! ## A016869.P758167451503869543

`A016863(n)*A016866(n)`
-/

namespace A016869.P758167451503869543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A016866 n

end

end A016869.P758167451503869543

namespace A016869

/-- `A016863(n)*A016866(n)` -/
def P758167451503869543.Spec : Prop :=
  ∀ n, P758167451503869543.a n = A016869 n

end A016869

/-! ## A016869.P8321171738984995450

`A016864(n)*A016865(n)`
-/

namespace A016869.P8321171738984995450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n * A016865 n

end

end A016869.P8321171738984995450

namespace A016869

/-- `A016864(n)*A016865(n)` -/
def P8321171738984995450.Spec : Prop :=
  ∀ n, P8321171738984995450.a n = A016869 n

end A016869

/-! ## A016869.P2219482906380048976

`A016861(n)²*A016867(n)`
-/

namespace A016869.P2219482906380048976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n ^ 2 * A016867 n

end

end A016869.P2219482906380048976

namespace A016869

/-- `A016861(n)²*A016867(n)` -/
def P2219482906380048976.Spec : Prop :=
  ∀ n, P2219482906380048976.a n = A016869 n

end A016869

/-! ## A016869.P16873234574749322484

`A016862(n)²*A016865(n)`
-/

namespace A016869.P16873234574749322484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n ^ 2 * A016865 n

end

end A016869.P16873234574749322484

namespace A016869

/-- `A016862(n)²*A016865(n)` -/
def P16873234574749322484.Spec : Prop :=
  ∀ n, P16873234574749322484.a n = A016869 n

end A016869

/-! ## A016869.P3185942438980086006

`A016864(n)²*A016861(n)`
-/

namespace A016869.P3185942438980086006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n ^ 2 * A016861 n

end

end A016869.P3185942438980086006

namespace A016869

/-- `A016864(n)²*A016861(n)` -/
def P3185942438980086006.Spec : Prop :=
  ∀ n, P3185942438980086006.a n = A016869 n

end A016869

/-! ## A016869.P18087401168856711445

`A016865(n)²/A016861(n)`
-/

namespace A016869.P18087401168856711445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016865 n ^ 2 : ℚ) / (A016861 n : ℚ)

end

end A016869.P18087401168856711445

namespace A016869

/-- `A016865(n)²/A016861(n)` -/
def P18087401168856711445.Spec : Prop :=
  ∀ n, P18087401168856711445.a n = (A016869 n : ℚ)

end A016869

/-! ## A016869.P14303325238801368527

`A016862(n)²²*A016861(n)`
-/

namespace A016869.P14303325238801368527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 n ^ 2) ^ 2 * A016861 n

end

end A016869.P14303325238801368527

namespace A016869

/-- `A016862(n)²²*A016861(n)` -/
def P14303325238801368527.Spec : Prop :=
  ∀ n, P14303325238801368527.a n = A016869 n

end A016869

/-! ## A016869.P1675584624093633499

`(A008587(n)+1)*A016864(n)²`
-/

namespace A016869.P1675584624093633499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008587 n + 1) * A016864 n ^ 2

end

end A016869.P1675584624093633499

namespace A016869

/-- `(A008587(n)+1)*A016864(n)²` -/
def P1675584624093633499.Spec : Prop :=
  ∀ n, P1675584624093633499.a n = A016869 n

end A016869

/-! ## A016869.P4804204824217983373

`A016862(n)*A016863(n)*A016864(n)`
-/

namespace A016869.P4804204824217983373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016863 n * A016864 n

end

end A016869.P4804204824217983373

namespace A016869

/-- `A016862(n)*A016863(n)*A016864(n)` -/
def P4804204824217983373.Spec : Prop :=
  ∀ n, P4804204824217983373.a n = A016869 n

end A016869

/-! ## A016869.P3201930805045462028

`A016861(n)*A016866(n)*A016861(n)²`
-/

namespace A016869.P3201930805045462028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016866 n * A016861 n ^ 2

end

end A016869.P3201930805045462028

namespace A016869

/-- `A016861(n)*A016866(n)*A016861(n)²` -/
def P3201930805045462028.Spec : Prop :=
  ∀ n, P3201930805045462028.a n = A016869 n

end A016869

/-! ## A016869.P6534818801992571340

`A016863(n)/(A016861(n)/A016864(n))²`
-/

namespace A016869.P6534818801992571340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016863 n : ℚ) / ((A016861 n : ℚ) / (A016864 n : ℚ)) ^ 2

end

end A016869.P6534818801992571340

namespace A016869

/-- `A016863(n)/(A016861(n)/A016864(n))²` -/
def P6534818801992571340.Spec : Prop :=
  ∀ n, P6534818801992571340.a n = (A016869 n : ℚ)

end A016869

/-! ## A016869.P1586473859008537719

`A001017(5*n+1)`
-/

namespace A016869.P1586473859008537719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (5 * n + 1)

end

end A016869.P1586473859008537719

namespace A016869

/-- `A001017(5*n+1)` -/
def P1586473859008537719.Spec : Prop :=
  ∀ n, P1586473859008537719.a n = A016869 n

end A016869

/-!
# A016870: a(n) = (5*n + 1)^10.

The programs for A016870, the canonical program `A016870.P6655336096772615045` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016870 has offset 0).

The definition of A016870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^10` (program `A016870.P6655336096772615045`, by `A016870.P6655336096772615045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016870.P6655336096772615045

`(5*n+1)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016870

/-- `(5*n+1)^10` -/
def P6655336096772615045.Spec : Prop :=
  ∀ n, (P6655336096772615045.a n : ℤ) = A016870 n

theorem P6655336096772615045.correct : P6655336096772615045.Spec := by
  intro n
  simp only [A016870]

end A016870

/-! ## A016870.P15917529057467689458

`(lt[lcm(5, 1-n), n]^5)²`
-/

namespace A016870.P15917529057467689458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016870.P15917529057467689458

namespace A016870

/-- `(lt[lcm(5, 1-n), n]^5)²` -/
def P15917529057467689458.Spec : Prop :=
  ∀ n, (P15917529057467689458.a n : ℤ) = A016870 n

end A016870

/-! ## A016870.P4579524889028935398

`A016865(n)²`
-/

namespace A016870.P4579524889028935398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 n ^ 2

end

end A016870.P4579524889028935398

namespace A016870

/-- `A016865(n)²` -/
def P4579524889028935398.Spec : Prop :=
  ∀ n, P4579524889028935398.a n = A016870 n

end A016870

/-! ## A016870.P17972115207923078308

`(A016861(n)^5)²`
-/

namespace A016870.P17972115207923078308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n ^ 5) ^ 2

end

end A016870.P17972115207923078308

namespace A016870

/-- `(A016861(n)^5)²` -/
def P17972115207923078308.Spec : Prop :=
  ∀ n, P17972115207923078308.a n = A016870 n

end A016870

/-! ## A016870.P16619478877875929162

`sqrt(A016864(n)^5)`
-/

namespace A016870.P16619478877875929162
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016864 n ^ 5 : ℝ)

end

end A016870.P16619478877875929162

namespace A016870

/-- `sqrt(A016864(n)^5)` -/
def P16619478877875929162.Spec : Prop :=
  ∀ n, P16619478877875929162.a n = (A016870 n : ℝ)

end A016870

/-! ## A016870.P139781226001320169

`((A016825(n)+n-1)^5)²`
-/

namespace A016870.P139781226001320169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 n + (n : ℤ) - 1) ^ 5) ^ 2

end

end A016870.P139781226001320169

namespace A016870

/-- `((A016825(n)+n-1)^5)²` -/
def P139781226001320169.Spec : Prop :=
  ∀ n, P139781226001320169.a n = A016870 n

end A016870

/-! ## A016870.P2400929345845294020

`A016861(n)*A016869(n)`
-/

namespace A016870.P2400929345845294020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A016869 n

end

end A016870.P2400929345845294020

namespace A016870

/-- `A016861(n)*A016869(n)` -/
def P2400929345845294020.Spec : Prop :=
  ∀ n, P2400929345845294020.a n = A016870 n

end A016870

/-! ## A016870.P1309032057689501571

`A016862(n)*A016868(n)`
-/

namespace A016870.P1309032057689501571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A016868 n

end

end A016870.P1309032057689501571

namespace A016870

/-- `A016862(n)*A016868(n)` -/
def P1309032057689501571.Spec : Prop :=
  ∀ n, P1309032057689501571.a n = A016870 n

end A016870

/-! ## A016870.P17882831827546840230

`A016863(n)*A016867(n)`
-/

namespace A016870.P17882831827546840230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A016867 n

end

end A016870.P17882831827546840230

namespace A016870

/-- `A016863(n)*A016867(n)` -/
def P17882831827546840230.Spec : Prop :=
  ∀ n, P17882831827546840230.a n = A016870 n

end A016870

/-! ## A016870.P15325431713416752680

`A016864(n)*A016866(n)`
-/

namespace A016870.P15325431713416752680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n * A016866 n

end

end A016870.P15325431713416752680

namespace A016870

/-- `A016864(n)*A016866(n)` -/
def P15325431713416752680.Spec : Prop :=
  ∀ n, P15325431713416752680.a n = A016870 n

end A016870

/-! ## A016870.P11533508008110953117

`A016872(n)/A016862(n)`
-/

namespace A016870.P11533508008110953117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016872 n : ℚ) / (A016862 n : ℚ)

end

end A016870.P11533508008110953117

namespace A016870

/-- `A016872(n)/A016862(n)` -/
def P11533508008110953117.Spec : Prop :=
  ∀ n, P11533508008110953117.a n = (A016870 n : ℚ)

end A016870

/-! ## A016870.P11200492768768177086

`(A016861(n)*A016864(n))²`
-/

namespace A016870.P11200492768768177086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n * A016864 n) ^ 2

end

end A016870.P11200492768768177086

namespace A016870

/-- `(A016861(n)*A016864(n))²` -/
def P11200492768768177086.Spec : Prop :=
  ∀ n, P11200492768768177086.a n = A016870 n

end A016870

/-! ## A016870.P6152787004808516858

`A016861(n)²*A016868(n)`
-/

namespace A016870.P6152787004808516858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n ^ 2 * A016868 n

end

end A016870.P6152787004808516858

namespace A016870

/-- `A016861(n)²*A016868(n)` -/
def P6152787004808516858.Spec : Prop :=
  ∀ n, P6152787004808516858.a n = A016870 n

end A016870

/-! ## A016870.P2607894787451819371

`(A016862(n)*A016863(n))²`
-/

namespace A016870.P2607894787451819371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 n * A016863 n) ^ 2

end

end A016870.P2607894787451819371

namespace A016870

/-- `(A016862(n)*A016863(n))²` -/
def P2607894787451819371.Spec : Prop :=
  ∀ n, P2607894787451819371.a n = A016870 n

end A016870

/-! ## A016870.P11214690885344017120

`A016862(n)²*A016866(n)`
-/

namespace A016870.P11214690885344017120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n ^ 2 * A016866 n

end

end A016870.P11214690885344017120

namespace A016870

/-- `A016862(n)²*A016866(n)` -/
def P11214690885344017120.Spec : Prop :=
  ∀ n, P11214690885344017120.a n = A016870 n

end A016870

/-! ## A016870.P8188114158245105675

`A016863(n)²*A016864(n)`
-/

namespace A016870.P8188114158245105675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n ^ 2 * A016864 n

end

end A016870.P8188114158245105675

namespace A016870

/-- `A016863(n)²*A016864(n)` -/
def P8188114158245105675.Spec : Prop :=
  ∀ n, P8188114158245105675.a n = A016870 n

end A016870

/-! ## A016870.P16650466987674949936

`A016864(n)²*A016862(n)`
-/

namespace A016870.P16650466987674949936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n ^ 2 * A016862 n

end

end A016870.P16650466987674949936

namespace A016870

/-- `A016864(n)²*A016862(n)` -/
def P16650466987674949936.Spec : Prop :=
  ∀ n, P16650466987674949936.a n = A016870 n

end A016870

/-! ## A016870.P7904050003007350304

`(A016866(n)/A016861(n))²`
-/

namespace A016870.P7904050003007350304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016866 n : ℚ) / (A016861 n : ℚ)) ^ 2

end

end A016870.P7904050003007350304

namespace A016870

/-- `(A016866(n)/A016861(n))²` -/
def P7904050003007350304.Spec : Prop :=
  ∀ n, P7904050003007350304.a n = (A016870 n : ℚ)

end A016870

/-! ## A016870.P75503477113886509

`(A016867(n)/A016862(n))²`
-/

namespace A016870.P75503477113886509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016867 n : ℚ) / (A016862 n : ℚ)) ^ 2

end

end A016870.P75503477113886509

namespace A016870

/-- `(A016867(n)/A016862(n))²` -/
def P75503477113886509.Spec : Prop :=
  ∀ n, P75503477113886509.a n = (A016870 n : ℚ)

end A016870

/-! ## A016870.P780738727206367502

`∪[A017285(n), A017345(n)]²`
-/

namespace A016870.P780738727206367502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016870.P780738727206367502

namespace A016870

/-- `∪[A017285(n), A017345(n)]²` -/
def P780738727206367502.Spec : Prop :=
  ∀ n, (P780738727206367502.a n : ℤ) = A016870 n

end A016870

/-!
# A016871: a(n) = (5*n + 1)^11.

The programs for A016871, the canonical program `A016871.P16414487065724036626` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016871 has offset 0).

The definition of A016871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^11` (program `A016871.P16414487065724036626`, by `A016871.P16414487065724036626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016871.P16414487065724036626

`(5*n+1)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016871

/-- `(5*n+1)^11` -/
def P16414487065724036626.Spec : Prop :=
  ∀ n, (P16414487065724036626.a n : ℤ) = A016871 n

theorem P16414487065724036626.correct : P16414487065724036626.Spec := by
  intro n
  simp only [A016871]

end A016871

/-! ## A016871.P10332073057918446646

`A016864(n)*A016867(n)`
-/

namespace A016871.P10332073057918446646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n * A016867 n

end

end A016871.P10332073057918446646

namespace A016871

/-- `A016864(n)*A016867(n)` -/
def P10332073057918446646.Spec : Prop :=
  ∀ n, P10332073057918446646.a n = A016871 n

end A016871

/-! ## A016871.P5803404456257813256

`A016865(n)*A016866(n)`
-/

namespace A016871.P5803404456257813256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 n * A016866 n

end

end A016871.P5803404456257813256

namespace A016871

/-- `A016865(n)*A016866(n)` -/
def P5803404456257813256.Spec : Prop :=
  ∀ n, P5803404456257813256.a n = A016871 n

end A016871

/-! ## A016871.P15667595387468681638

`A016866(n)²/A016861(n)`
-/

namespace A016871.P15667595387468681638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016866 n ^ 2 : ℚ) / (A016861 n : ℚ)

end

end A016871.P15667595387468681638

namespace A016871

/-- `A016866(n)²/A016861(n)` -/
def P15667595387468681638.Spec : Prop :=
  ∀ n, P15667595387468681638.a n = (A016871 n : ℚ)

end A016871

/-! ## A016871.P11881069835231964919

`A016863(n)*A016864(n)*A016864(n)`
-/

namespace A016871.P11881069835231964919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A016864 n * A016864 n

end

end A016871.P11881069835231964919

namespace A016871

/-- `A016863(n)*A016864(n)*A016864(n)` -/
def P11881069835231964919.Spec : Prop :=
  ∀ n, P11881069835231964919.a n = A016871 n

end A016871

/-! ## A016871.P17821782856583340603

`A008455(A016861(n))`
-/

namespace A016871.P17821782856583340603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016861 n).toNat

end

end A016871.P17821782856583340603

namespace A016871

/-- `A008455(A016861(n))` -/
def P17821782856583340603.Spec : Prop :=
  ∀ n, P17821782856583340603.a n = A016871 n

end A016871

/-!
# A016872: a(n) = (5*n + 1)^12.

The programs for A016872, the canonical program `A016872.P15068576597807358165` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016872 has offset 0).

The definition of A016872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)^12` (program `A016872.P15068576597807358165`, by `A016872.P15068576597807358165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016872.P15068576597807358165

`(5*n+1)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016872

/-- `(5*n+1)^12` -/
def P15068576597807358165.Spec : Prop :=
  ∀ n, (P15068576597807358165.a n : ℤ) = A016872 n

theorem P15068576597807358165.correct : P15068576597807358165.Spec := by
  intro n
  simp only [A016872]

end A016872

/-! ## A016872.P14122152937776267903

`A016866(n)²`
-/

namespace A016872.P14122152937776267903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 n ^ 2

end

end A016872.P14122152937776267903

namespace A016872

/-- `A016866(n)²` -/
def P14122152937776267903.Spec : Prop :=
  ∀ n, P14122152937776267903.a n = A016872 n

end A016872

/-! ## A016872.P12082441411050300250

`A016865(n)*A016867(n)`
-/

namespace A016872.P12082441411050300250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 n * A016867 n

end

end A016872.P12082441411050300250

namespace A016872

/-- `A016865(n)*A016867(n)` -/
def P12082441411050300250.Spec : Prop :=
  ∀ n, P12082441411050300250.a n = A016872 n

end A016872

/-! ## A016872.P9120155755311867187

`A016864(n)*A016864(n)*A016864(n)`
-/

namespace A016872.P9120155755311867187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 n * A016864 n * A016864 n

end

end A016872.P9120155755311867187

namespace A016872

/-- `A016864(n)*A016864(n)*A016864(n)` -/
def P9120155755311867187.Spec : Prop :=
  ∀ n, P9120155755311867187.a n = A016872 n

end A016872

/-! ## A016872.P14008583553193399658

`A008456(A017293(n)/2)`
-/

namespace A016872.P14008583553193399658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (SequenceMachineLib.roundAway ((A017293 n : ℚ) / 2)).toNat

end

end A016872.P14008583553193399658

namespace A016872

/-- `A008456(A017293(n)/2)` -/
def P14008583553193399658.Spec : Prop :=
  ∀ n, P14008583553193399658.a n = A016872 n

end A016872

/-!
# A016873: a(n) = 5*n + 2.

The programs for A016873, the canonical program `A016873.P366335242068170250` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016873 has offset 0).

The definition of A016873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+2` (program `A016873.P366335242068170250`, by `A016873.P366335242068170250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016873.P366335242068170250

`5*n+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016873

/-- `5*n+2` -/
def P366335242068170250.Spec : Prop :=
  ∀ n, (P366335242068170250.a n : ℤ) = A016873 n

theorem P366335242068170250.correct : P366335242068170250.Spec := by
  intro n
  simp only [A016873]

end A016873

/-!
# A016874: a(n) = (5*n + 2)^2.

The programs for A016874, the canonical program `A016874.P17500456718272948104` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016874 has offset 0).

The definition of A016874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)²` (program `A016874.P17500456718272948104`, by `A016874.P17500456718272948104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016874.P17500456718272948104

`(5*n+2)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016874

/-- `(5*n+2)²` -/
def P17500456718272948104.Spec : Prop :=
  ∀ n, (P17500456718272948104.a n : ℤ) = A016874 n

theorem P17500456718272948104.correct : P17500456718272948104.Spec := by
  intro n
  simp only [A016874]

end A016874

/-! ## A016874.P5472291443003750066

`a(n-1)+50*n-5` with `a(0)=4`
-/

namespace A016874.P5472291443003750066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (50 * n : ℤ) - 5

end

end A016874.P5472291443003750066

namespace A016874

/-- `a(n-1)+50*n-5` -/
def P5472291443003750066.Spec : Prop :=
  ∀ n, P5472291443003750066.a n = A016874 n

theorem P5472291443003750066.correct : P5472291443003750066.Spec := by
  intro n
  induction n with
  | zero => simp [A016874, A016874.P5472291443003750066.a, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016874, Nat.add_sub_cancel, A016874.P5472291443003750066.a, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016874

/-! ## A016874.P8661944830411890687

`∑[a(n-1)+50]` with `a(0)=4, a(1)=45`
-/

namespace A016874.P8661944830411890687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 45] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016874.P8661944830411890687

namespace A016874

/-- `∑[a(n-1)+50]` -/
def P8661944830411890687.Spec : Prop :=
  ∀ n, (P8661944830411890687.a n : ℤ) = A016874 n

end A016874

/-! ## A016874.P16374336539824721295

`record[(gcd(5, n)+n-3)²]`
-/

namespace A016874.P16374336539824721295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016874.P16374336539824721295

namespace A016874

/-- `record[(gcd(5, n)+n-3)²]` -/
def P16374336539824721295.Spec : Prop :=
  ∀ n, P16374336539824721295.a n = A016874 n

end A016874

/-! ## A016874.P3371750876178283273

`ceil(Δ[C(5*n, 2)/5]²)`
-/

namespace A016874.P3371750876178283273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) ^ 2⌉

end

end A016874.P3371750876178283273

namespace A016874

/-- `ceil(Δ[C(5*n, 2)/5]²)` -/
def P3371750876178283273.Spec : Prop :=
  ∀ n, P3371750876178283273.a n = A016874 n

end A016874

/-! ## A016874.P14511056306766824915

`50*n-(5-a(n-1))` with `a(0)=4`
-/

namespace A016874.P14511056306766824915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (50 * n : ℤ) - (5 - a (n - 1))

end

end A016874.P14511056306766824915

namespace A016874

/-- `50*n-(5-a(n-1))` -/
def P14511056306766824915.Spec : Prop :=
  ∀ n, P14511056306766824915.a n = A016874 n

theorem P14511056306766824915.correct : P14511056306766824915.Spec := by
  intro n
  induction n with
  | zero => simp [A016874, A016874.P14511056306766824915.a, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016874, Nat.add_sub_cancel, A016874.P14511056306766824915.a, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016874

/-! ## A016874.P18409095525436138556

`record[(n+2)^(2-lcm(5, n)+n)]`
-/

namespace A016874.P18409095525436138556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (2 - (Nat.lcm 5 n : ℤ) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016874.P18409095525436138556

namespace A016874

/-- `record[(n+2)^(2-lcm(5, n)+n)]` -/
def P18409095525436138556.Spec : Prop :=
  ∀ n, P18409095525436138556.a n = (A016874 n : ℚ)

end A016874

/-! ## A016874.P12431019829577548799

`floor((a(n-1)^(1/2)+5)²)` with `a(0)=4`
-/

namespace A016874.P12431019829577548799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ) + 5) ^ 2⌋

end

end A016874.P12431019829577548799

namespace A016874

/-- `floor((a(n-1)^(1/2)+5)²)` -/
def P12431019829577548799.Spec : Prop :=
  ∀ n, P12431019829577548799.a n = A016874 n

end A016874

/-! ## A016874.P18183550799608832729

`5*∑[ogf((1+7x+2x^2)/(1-2x+x^2))]-1`
-/

namespace A016874.P18183550799608832729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A016874.P18183550799608832729

namespace A016874

/-- `5*∑[ogf((1+7x+2x^2)/(1-2x+x^2))]-1` -/
def P18183550799608832729.Spec : Prop :=
  ∀ n, P18183550799608832729.a n = A016874 n

end A016874

/-! ## A016874.P5240698797257934365

`sqrt(A016876(n))`
-/

namespace A016874.P5240698797257934365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016876 n : ℝ)

end

end A016874.P5240698797257934365

namespace A016874

/-- `sqrt(A016876(n))` -/
def P5240698797257934365.Spec : Prop :=
  ∀ n, P5240698797257934365.a n = (A016874 n : ℝ)

end A016874

/-! ## A016874.P13570411110448470836

`A017318(n)/4`
-/

namespace A016874.P13570411110448470836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017318 n : ℚ) / 4

end

end A016874.P13570411110448470836

namespace A016874

/-- `A017318(n)/4` -/
def P13570411110448470836.Spec : Prop :=
  ∀ n, P13570411110448470836.a n = (A016874 n : ℚ)

end A016874

/-! ## A016874.P5368075319385950804

`sqrt(sqrt(A016880(n)))`
-/

namespace A016874.P5368075319385950804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016880 n : ℝ))

end

end A016874.P5368075319385950804

namespace A016874

/-- `sqrt(sqrt(A016880(n)))` -/
def P5368075319385950804.Spec : Prop :=
  ∀ n, P5368075319385950804.a n = (A016874 n : ℝ)

end A016874

/-! ## A016874.P2179118318893922218

`sqrt(A017320(n))/4`
-/

namespace A016874.P2179118318893922218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017320 n : ℝ) / 4

end

end A016874.P2179118318893922218

namespace A016874

/-- `sqrt(A017320(n))/4` -/
def P2179118318893922218.Spec : Prop :=
  ∀ n, P2179118318893922218.a n = (A016874 n : ℝ)

end A016874

/-! ## A016874.P15231971875728663800

`5*A135705(n)+4`
-/

namespace A016874.P15231971875728663800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A135705 n + 4

end

end A016874.P15231971875728663800

namespace A016874

/-- `5*A135705(n)+4` -/
def P15231971875728663800.Spec : Prop :=
  ∀ n, P15231971875728663800.a n = A016874 n

end A016874

/-! ## A016874.P11123251990377658344

`A016878(n)^(1/3)`
-/

namespace A016874.P11123251990377658344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016878 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016874.P11123251990377658344

namespace A016874

/-- `A016878(n)^(1/3)` -/
def P11123251990377658344.Spec : Prop :=
  ∀ n, P11123251990377658344.a n = (A016874 n : ℝ)

end A016874

/-! ## A016874.P11702189671229839848

`A016875(n)^(2/3)`
-/

namespace A016874.P11702189671229839848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016875 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016874.P11702189671229839848

namespace A016874

/-- `A016875(n)^(2/3)` -/
def P11702189671229839848.Spec : Prop :=
  ∀ n, P11702189671229839848.a n = (A016874 n : ℝ)

end A016874

/-! ## A016874.P326394016436845082

`A001545(n)-5*n`
-/

namespace A016874.P326394016436845082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 n - (5 * n : ℤ)

end

end A016874.P326394016436845082

namespace A016874

/-- `A001545(n)-5*n` -/
def P326394016436845082.Spec : Prop :=
  ∀ n, P326394016436845082.a n = A016874 n

end A016874

/-! ## A016874.P18355045601240235027

`(A008592(n)+4)²/4`
-/

namespace A016874.P18355045601240235027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 4) ^ 2 : ℚ) / 4

end

end A016874.P18355045601240235027

namespace A016874

/-- `(A008592(n)+4)²/4` -/
def P18355045601240235027.Spec : Prop :=
  ∀ n, P18355045601240235027.a n = (A016874 n : ℚ)

end A016874

/-! ## A016874.P11991573313634509648

`5*A079273(n+1)-1`
-/

namespace A016874.P11991573313634509648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A079273 (n + 1) - 1

end

end A016874.P11991573313634509648

namespace A016874

/-- `5*A079273(n+1)-1` -/
def P11991573313634509648.Spec : Prop :=
  ∀ n, P11991573313634509648.a n = A016874 n

end A016874

/-! ## A016874.P2424319983436461315

`(5*n+2)*A016873(n)`
-/

namespace A016874.P2424319983436461315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) * A016873 n

end

end A016874.P2424319983436461315

namespace A016874

/-- `(5*n+2)*A016873(n)` -/
def P2424319983436461315.Spec : Prop :=
  ∀ n, P2424319983436461315.a n = A016874 n

end A016874

/-!
# A016875: a(n) = (5n+2)^3.

The programs for A016875, the canonical program `A016875.P10633171972771459334` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016875 has offset 0).

The definition of A016875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^3` (program `A016875.P10633171972771459334`, by `A016875.P10633171972771459334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016875.P10633171972771459334

`(5*n+2)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016875

/-- `(5*n+2)^3` -/
def P10633171972771459334.Spec : Prop :=
  ∀ n, (P10633171972771459334.a n : ℤ) = A016875 n

theorem P10633171972771459334.correct : P10633171972771459334.Spec := by
  intro n
  simp only [A016875]

end A016875

/-! ## A016875.P2968517612399535771

`record[(n+2)^(gcd(5, n)-2)]`
-/

namespace A016875.P2968517612399535771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016875.P2968517612399535771

namespace A016875

/-- `record[(n+2)^(gcd(5, n)-2)]` -/
def P2968517612399535771.Spec : Prop :=
  ∀ n, P2968517612399535771.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P3205918443857577593

`record[(n+2)^gcd(3, n²%5)]`
-/

namespace A016875.P3205918443857577593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 3 (n ^ 2 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016875.P3205918443857577593

namespace A016875

/-- `record[(n+2)^gcd(3, n²%5)]` -/
def P3205918443857577593.Spec : Prop :=
  ∀ n, (P3205918443857577593.a n : ℤ) = A016875 n

end A016875

/-! ## A016875.P452926295999713934

`record[(n+2)^(n+3-lcm(5, n))]`
-/

namespace A016875.P452926295999713934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n + 3 : ℤ) - (Nat.lcm 5 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016875.P452926295999713934

namespace A016875

/-- `record[(n+2)^(n+3-lcm(5, n))]` -/
def P452926295999713934.Spec : Prop :=
  ∀ n, P452926295999713934.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P15991961267970417242

`sqrt(A016878(n))`
-/

namespace A016875.P15991961267970417242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016878 n : ℝ)

end

end A016875.P15991961267970417242

namespace A016875

/-- `sqrt(A016878(n))` -/
def P15991961267970417242.Spec : Prop :=
  ∀ n, P15991961267970417242.a n = (A016875 n : ℝ)

end A016875

/-! ## A016875.P16754894184423001156

`A017319(n)/8`
-/

namespace A016875.P16754894184423001156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017319 n : ℚ) / 8

end

end A016875.P16754894184423001156

namespace A016875

/-- `A017319(n)/8` -/
def P16754894184423001156.Spec : Prop :=
  ∀ n, P16754894184423001156.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P9311236172213617032

`sqrt(A016874(n)^3)`
-/

namespace A016875.P9311236172213617032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016874 n ^ 3 : ℝ)

end

end A016875.P9311236172213617032

namespace A016875

/-- `sqrt(A016874(n)^3)` -/
def P9311236172213617032.Spec : Prop :=
  ∀ n, P9311236172213617032.a n = (A016875 n : ℝ)

end A016875

/-! ## A016875.P11223408246048289282

`A016876(n)/(5*n+2)`
-/

namespace A016875.P11223408246048289282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n : ℚ) / (5 * n + 2 : ℚ)

end

end A016875.P11223408246048289282

namespace A016875

/-- `A016876(n)/(5*n+2)` -/
def P11223408246048289282.Spec : Prop :=
  ∀ n, P11223408246048289282.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P328501502472909962

`A016873(n)+A001509(n)`
-/

namespace A016875.P328501502472909962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + A001509 n

end

end A016875.P328501502472909962

namespace A016875

/-- `A016873(n)+A001509(n)` -/
def P328501502472909962.Spec : Prop :=
  ∀ n, P328501502472909962.a n = A016875 n

end A016875

/-! ## A016875.P3842013719477481644

`A016873(n)*A016874(n)`
-/

namespace A016875.P3842013719477481644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016874 n

end

end A016875.P3842013719477481644

namespace A016875

/-- `A016873(n)*A016874(n)` -/
def P3842013719477481644.Spec : Prop :=
  ∀ n, P3842013719477481644.a n = A016875 n

end A016875

/-! ## A016875.P10917829044263132275

`A016877(n)/A016874(n)`
-/

namespace A016875.P10917829044263132275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n : ℚ) / (A016874 n : ℚ)

end

end A016875.P10917829044263132275

namespace A016875

/-- `A016877(n)/A016874(n)` -/
def P10917829044263132275.Spec : Prop :=
  ∀ n, P10917829044263132275.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P5208994826874714181

`A016879(n)/A016876(n)`
-/

namespace A016875.P5208994826874714181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 n : ℚ) / (A016876 n : ℚ)

end

end A016875.P5208994826874714181

namespace A016875

/-- `A016879(n)/A016876(n)` -/
def P5208994826874714181.Spec : Prop :=
  ∀ n, P5208994826874714181.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P2342882433686218044

`A016880(n)/A016877(n)`
-/

namespace A016875.P2342882433686218044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 n : ℚ) / (A016877 n : ℚ)

end

end A016875.P2342882433686218044

namespace A016875

/-- `A016880(n)/A016877(n)` -/
def P2342882433686218044.Spec : Prop :=
  ∀ n, P2342882433686218044.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P12148692202819453273

`∪[A017295(n), A017355(n)]`
-/

namespace A016875.P12148692202819453273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016875.P12148692202819453273

namespace A016875

/-- `∪[A017295(n), A017355(n)]` -/
def P12148692202819453273.Spec : Prop :=
  ∀ n, (P12148692202819453273.a n : ℤ) = A016875 n

end A016875

/-! ## A016875.P13865876947218064825

`A016876(n)²/A016877(n)`
-/

namespace A016875.P13865876947218064825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n ^ 2 : ℚ) / (A016877 n : ℚ)

end

end A016875.P13865876947218064825

namespace A016875

/-- `A016876(n)²/A016877(n)` -/
def P13865876947218064825.Spec : Prop :=
  ∀ n, P13865876947218064825.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P6969163526551941782

`A016877(n)/A016873(n)²`
-/

namespace A016875.P6969163526551941782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n : ℚ) / (A016873 n ^ 2 : ℚ)

end

end A016875.P6969163526551941782

namespace A016875

/-- `A016877(n)/A016873(n)²` -/
def P6969163526551941782.Spec : Prop :=
  ∀ n, P6969163526551941782.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P17548466597648005718

`A016879(n)/A016874(n)²`
-/

namespace A016875.P17548466597648005718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 n : ℚ) / (A016874 n ^ 2 : ℚ)

end

end A016875.P17548466597648005718

namespace A016875

/-- `A016879(n)/A016874(n)²` -/
def P17548466597648005718.Spec : Prop :=
  ∀ n, P17548466597648005718.a n = (A016875 n : ℚ)

end A016875

/-! ## A016875.P3571661500436421505

`A001509(n)+A016861(n)+1`
-/

namespace A016875.P3571661500436421505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n + (A016861 n + 1)

end

end A016875.P3571661500436421505

namespace A016875

/-- `A001509(n)+A016861(n)+1` -/
def P3571661500436421505.Spec : Prop :=
  ∀ n, P3571661500436421505.a n = A016875 n

end A016875

/-! ## A016875.P8002983671245093151

`A001509(n)+A008587(n)+2`
-/

namespace A016875.P8002983671245093151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n + (A008587 n + 2)

end

end A016875.P8002983671245093151

namespace A016875

/-- `A001509(n)+A008587(n)+2` -/
def P8002983671245093151.Spec : Prop :=
  ∀ n, P8002983671245093151.a n = A016875 n

end A016875

/-! ## A016875.P14013826579735072320

`A001509(n)+A016885(n)-1`
-/

namespace A016875.P14013826579735072320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n + (A016885 n - 1)

end

end A016875.P14013826579735072320

namespace A016875

/-- `A001509(n)+A016885(n)-1` -/
def P14013826579735072320.Spec : Prop :=
  ∀ n, P14013826579735072320.a n = A016875 n

end A016875

/-!
# A016876: a(n) = (5*n + 2)^4.

The programs for A016876, the canonical program `A016876.P3444311806117056528` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016876 has offset 0).

The definition of A016876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^4` (program `A016876.P3444311806117056528`, by `A016876.P3444311806117056528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016876.P3444311806117056528

`(5*n+2)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016876

/-- `(5*n+2)^4` -/
def P3444311806117056528.Spec : Prop :=
  ∀ n, (P3444311806117056528.a n : ℤ) = A016876 n

theorem P3444311806117056528.correct : P3444311806117056528.Spec := by
  intro n
  simp only [A016876]

end A016876

/-! ## A016876.P1851805268545241239

`(lcm(5, 5*n)+2)²²`
-/

namespace A016876.P1851805268545241239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 5 (5 * n) + 2) ^ 2) ^ 2

end

end A016876.P1851805268545241239

namespace A016876

/-- `(lcm(5, 5*n)+2)²²` -/
def P1851805268545241239.Spec : Prop :=
  ∀ n, (P1851805268545241239.a n : ℤ) = A016876 n

theorem P1851805268545241239.correct : P1851805268545241239.Spec := by
  intro n
  simp only [A016876, Nat.add_sub_cancel, A016876.P1851805268545241239.a, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016876

/-! ## A016876.P14722552871678101859

`(or(2, 4*n)+n)²²`
-/

namespace A016876.P14722552871678101859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (4 * n) + n) ^ 2) ^ 2

end

end A016876.P14722552871678101859

namespace A016876

/-- `(or(2, 4*n)+n)²²` -/
def P14722552871678101859.Spec : Prop :=
  ∀ n, (P14722552871678101859.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P10731095635646476022

`(xor(2, 4*n)+n)²²`
-/

namespace A016876.P10731095635646476022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (4 * n) + n) ^ 2) ^ 2

end

end A016876.P10731095635646476022

namespace A016876

/-- `(xor(2, 4*n)+n)²²` -/
def P10731095635646476022.Spec : Prop :=
  ∀ n, (P10731095635646476022.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P18205147650779364658

`record[(n+2)^(gcd(5, n)-1)]`
-/

namespace A016876.P18205147650779364658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016876.P18205147650779364658

namespace A016876

/-- `record[(n+2)^(gcd(5, n)-1)]` -/
def P18205147650779364658.Spec : Prop :=
  ∀ n, P18205147650779364658.a n = (A016876 n : ℚ)

end A016876

/-! ## A016876.P722700600642585711

`(record[lcm(2, n+1)]+n)²²`
-/

namespace A016876.P722700600642585711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 2) ^ 2

end

end A016876.P722700600642585711

namespace A016876

/-- `(record[lcm(2, n+1)]+n)²²` -/
def P722700600642585711.Spec : Prop :=
  ∀ n, (P722700600642585711.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P8978096803571832423

`(record[xor(3, n)]+n-1)²²`
-/

namespace A016876.P8978096803571832423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A016876.P8978096803571832423

namespace A016876

/-- `(record[xor(3, n)]+n-1)²²` -/
def P8978096803571832423.Spec : Prop :=
  ∀ n, P8978096803571832423.a n = A016876 n

end A016876

/-! ## A016876.P7280516442278281918

`record[a(n-2)+5]²²` with `a(0)=2, a(1)=0`
-/

namespace A016876.P7280516442278281918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016876.P7280516442278281918

namespace A016876

/-- `record[a(n-2)+5]²²` -/
def P7280516442278281918.Spec : Prop :=
  ∀ n, (P7280516442278281918.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P4100875688830767766

`(Δ[C(2*n, 2)]+n+1)²²`
-/

namespace A016876.P4100875688830767766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A016876.P4100875688830767766

namespace A016876

/-- `(Δ[C(2*n, 2)]+n+1)²²` -/
def P4100875688830767766.Spec : Prop :=
  ∀ n, P4100875688830767766.a n = A016876 n

end A016876

/-! ## A016876.P6256581092072358231

`(C(n+2, n+1)+4*n)²²`
-/

namespace A016876.P6256581092072358231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) (n + 1) + 4 * n) ^ 2) ^ 2

end

end A016876.P6256581092072358231

namespace A016876

/-- `(C(n+2, n+1)+4*n)²²` -/
def P6256581092072358231.Spec : Prop :=
  ∀ n, (P6256581092072358231.a n : ℤ) = A016876 n

theorem P6256581092072358231.correct : P6256581092072358231.Spec := by
  intro n
  simp only [A016876, Nat.add_sub_cancel, A016876.P6256581092072358231.a, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016876

/-! ## A016876.P14345866848836752703

`(eq[n, and(n, n+3)]+n+2)²²`
-/

namespace A016876.P14345866848836752703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 2)) ^ 2) ^ 2

end

end A016876.P14345866848836752703

namespace A016876

/-- `(eq[n, and(n, n+3)]+n+2)²²` -/
def P14345866848836752703.Spec : Prop :=
  ∀ n, (P14345866848836752703.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P12358690904718543338

`((2*n+1)*gcd(2, 2*n)+n)²²`
-/

namespace A016876.P12358690904718543338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * Nat.gcd 2 (2 * n) + n) ^ 2) ^ 2

end

end A016876.P12358690904718543338

namespace A016876

/-- `((2*n+1)*gcd(2, 2*n)+n)²²` -/
def P12358690904718543338.Spec : Prop :=
  ∀ n, (P12358690904718543338.a n : ℤ) = A016876 n

theorem P12358690904718543338.correct : P12358690904718543338.Spec := by
  intro n
  simp only [A016876, Nat.add_sub_cancel, A016876.P12358690904718543338.a, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016876

/-! ## A016876.P14635476150492230283

`(2*and(2*n+1, 2*n)+n+2)²²`
-/

namespace A016876.P14635476150492230283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land (2 * n + 1) (2 * n) + (n + 2)) ^ 2) ^ 2

end

end A016876.P14635476150492230283

namespace A016876

/-- `(2*and(2*n+1, 2*n)+n+2)²²` -/
def P14635476150492230283.Spec : Prop :=
  ∀ n, (P14635476150492230283.a n : ℤ) = A016876 n

end A016876

/-! ## A016876.P2976785303524610535

`A016874(n)²`
-/

namespace A016876.P2976785303524610535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n ^ 2

end

end A016876.P2976785303524610535

namespace A016876

/-- `A016874(n)²` -/
def P2976785303524610535.Spec : Prop :=
  ∀ n, P2976785303524610535.a n = A016876 n

end A016876

/-! ## A016876.P15530824933909397996

`sqrt(A016880(n))`
-/

namespace A016876.P15530824933909397996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016880 n : ℝ)

end

end A016876.P15530824933909397996

namespace A016876

/-- `sqrt(A016880(n))` -/
def P15530824933909397996.Spec : Prop :=
  ∀ n, P15530824933909397996.a n = (A016876 n : ℝ)

end A016876

/-! ## A016876.P9849670410096492736

`A016873(n)²²`
-/

namespace A016876.P9849670410096492736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n ^ 2) ^ 2

end

end A016876.P9849670410096492736

namespace A016876

/-- `A016873(n)²²` -/
def P9849670410096492736.Spec : Prop :=
  ∀ n, P9849670410096492736.a n = A016876 n

end A016876

/-! ## A016876.P7203245395925911023

`(A017318(n)/4)²`
-/

namespace A016876.P7203245395925911023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017318 n : ℚ) / 4) ^ 2

end

end A016876.P7203245395925911023

namespace A016876

/-- `(A017318(n)/4)²` -/
def P7203245395925911023.Spec : Prop :=
  ∀ n, P7203245395925911023.a n = (A016876 n : ℚ)

end A016876

/-! ## A016876.P8647246640386722504

`(A016861(n)+1)²²`
-/

namespace A016876.P8647246640386722504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016861 n + 1) ^ 2) ^ 2

end

end A016876.P8647246640386722504

namespace A016876

/-- `(A016861(n)+1)²²` -/
def P8647246640386722504.Spec : Prop :=
  ∀ n, P8647246640386722504.a n = A016876 n

end A016876

/-! ## A016876.P7168914481169041341

`(A008587(n)+2)²²`
-/

namespace A016876.P7168914481169041341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008587 n + 2) ^ 2) ^ 2

end

end A016876.P7168914481169041341

namespace A016876

/-- `(A008587(n)+2)²²` -/
def P7168914481169041341.Spec : Prop :=
  ∀ n, P7168914481169041341.a n = A016876 n

end A016876

/-! ## A016876.P15920735535265493665

`(1-A016885(n))²²`
-/

namespace A016876.P15920735535265493665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A016885 n) ^ 2) ^ 2

end

end A016876.P15920735535265493665

namespace A016876

/-- `(1-A016885(n))²²` -/
def P15920735535265493665.Spec : Prop :=
  ∀ n, P15920735535265493665.a n = A016876 n

end A016876

/-!
# A016877: a(n) = (5*n + 2)^5.

The programs for A016877, the canonical program `A016877.P4696338323351149343` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016877 has offset 0).

The definition of A016877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^5` (program `A016877.P4696338323351149343`, by `A016877.P4696338323351149343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016877.P4696338323351149343

`(5*n+2)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016877

/-- `(5*n+2)^5` -/
def P4696338323351149343.Spec : Prop :=
  ∀ n, (P4696338323351149343.a n : ℤ) = A016877 n

theorem P4696338323351149343.correct : P4696338323351149343.Spec := by
  intro n
  simp only [A016877]

end A016877

/-! ## A016877.P13124822619958660153

`record[(n+2)^gcd(5, n)]`
-/

namespace A016877.P13124822619958660153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016877.P13124822619958660153

namespace A016877

/-- `record[(n+2)^gcd(5, n)]` -/
def P13124822619958660153.Spec : Prop :=
  ∀ n, (P13124822619958660153.a n : ℤ) = A016877 n

end A016877

/-! ## A016877.P13363653485390417402

`sqrt(A016882(n))`
-/

namespace A016877.P13363653485390417402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016882 n : ℝ)

end

end A016877.P13363653485390417402

namespace A016877

/-- `sqrt(A016882(n))` -/
def P13363653485390417402.Spec : Prop :=
  ∀ n, P13363653485390417402.a n = (A016877 n : ℝ)

end A016877

/-! ## A016877.P8819416493519846752

`sqrt(A016874(n)^5)`
-/

namespace A016877.P8819416493519846752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016874 n ^ 5 : ℝ)

end

end A016877.P8819416493519846752

namespace A016877

/-- `sqrt(A016874(n)^5)` -/
def P8819416493519846752.Spec : Prop :=
  ∀ n, P8819416493519846752.a n = (A016877 n : ℝ)

end A016877

/-! ## A016877.P12151936257028760293

`A016876(n)*(5*n+2)`
-/

namespace A016877.P12151936257028760293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n * (5 * n + 2 : ℤ)

end

end A016877.P12151936257028760293

namespace A016877

/-- `A016876(n)*(5*n+2)` -/
def P12151936257028760293.Spec : Prop :=
  ∀ n, P12151936257028760293.a n = A016877 n

end A016877

/-! ## A016877.P7799877161710209795

`abs(A016873(n)^5-1)+1`
-/

namespace A016877.P7799877161710209795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016873 n ^ 5 - 1| + 1

end

end A016877.P7799877161710209795

namespace A016877

/-- `abs(A016873(n)^5-1)+1` -/
def P7799877161710209795.Spec : Prop :=
  ∀ n, P7799877161710209795.a n = A016877 n

end A016877

/-! ## A016877.P18109796214410185986

`abs((2-A016957(n)+n)^5)`
-/

namespace A016877.P18109796214410185986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A016957 n + (n : ℤ)) ^ 5|

end

end A016877.P18109796214410185986

namespace A016877

/-- `abs((2-A016957(n)+n)^5)` -/
def P18109796214410185986.Spec : Prop :=
  ∀ n, P18109796214410185986.a n = A016877 n

end A016877

/-! ## A016877.P17850469364327635252

`A016873(n)*A016876(n)`
-/

namespace A016877.P17850469364327635252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016876 n

end

end A016877.P17850469364327635252

namespace A016877

/-- `A016873(n)*A016876(n)` -/
def P17850469364327635252.Spec : Prop :=
  ∀ n, P17850469364327635252.a n = A016877 n

end A016877

/-! ## A016877.P2072857798119821065

`A016874(n)*A016875(n)`
-/

namespace A016877.P2072857798119821065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n * A016875 n

end

end A016877.P2072857798119821065

namespace A016877

/-- `A016874(n)*A016875(n)` -/
def P2072857798119821065.Spec : Prop :=
  ∀ n, P2072857798119821065.a n = A016877 n

end A016877

/-! ## A016877.P2229699937329223858

`A016878(n)/A016873(n)`
-/

namespace A016877.P2229699937329223858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016878 n : ℚ) / (A016873 n : ℚ)

end

end A016877.P2229699937329223858

namespace A016877

/-- `A016878(n)/A016873(n)` -/
def P2229699937329223858.Spec : Prop :=
  ∀ n, P2229699937329223858.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P10361629837903709388

`A016879(n)/A016874(n)`
-/

namespace A016877.P10361629837903709388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 n : ℚ) / (A016874 n : ℚ)

end

end A016877.P10361629837903709388

namespace A016877

/-- `A016879(n)/A016874(n)` -/
def P10361629837903709388.Spec : Prop :=
  ∀ n, P10361629837903709388.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P1830980279871588280

`∪[A017297(n), A017357(n)]`
-/

namespace A016877.P1830980279871588280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017357 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016877.P1830980279871588280

namespace A016877

/-- `∪[A017297(n), A017357(n)]` -/
def P1830980279871588280.Spec : Prop :=
  ∀ n, (P1830980279871588280.a n : ℤ) = A016877 n

end A016877

/-! ## A016877.P15479734273005244220

`A016873(n)²*A016875(n)`
-/

namespace A016877.P15479734273005244220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n ^ 2 * A016875 n

end

end A016877.P15479734273005244220

namespace A016877

/-- `A016873(n)²*A016875(n)` -/
def P15479734273005244220.Spec : Prop :=
  ∀ n, P15479734273005244220.a n = A016877 n

end A016877

/-! ## A016877.P6325722683544631571

`A016874(n)²*A016873(n)`
-/

namespace A016877.P6325722683544631571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n ^ 2 * A016873 n

end

end A016877.P6325722683544631571

namespace A016877

/-- `A016874(n)²*A016873(n)` -/
def P6325722683544631571.Spec : Prop :=
  ∀ n, P6325722683544631571.a n = A016877 n

end A016877

/-! ## A016877.P4493970440222548347

`A016876(n)²/A016875(n)`
-/

namespace A016877.P4493970440222548347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n ^ 2 : ℚ) / (A016875 n : ℚ)

end

end A016877.P4493970440222548347

namespace A016877

/-- `A016876(n)²/A016875(n)` -/
def P4493970440222548347.Spec : Prop :=
  ∀ n, P4493970440222548347.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P1071431805543823712

`A016879(n)/A016873(n)²`
-/

namespace A016877.P1071431805543823712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 n : ℚ) / (A016873 n ^ 2 : ℚ)

end

end A016877.P1071431805543823712

namespace A016877

/-- `A016879(n)/A016873(n)²` -/
def P1071431805543823712.Spec : Prop :=
  ∀ n, P1071431805543823712.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P3647834688732223730

`(A016885(n)-1)*A016874(n)²`
-/

namespace A016877.P3647834688732223730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n - 1) * A016874 n ^ 2

end

end A016877.P3647834688732223730

namespace A016877

/-- `(A016885(n)-1)*A016874(n)²` -/
def P3647834688732223730.Spec : Prop :=
  ∀ n, P3647834688732223730.a n = A016877 n

end A016877

/-! ## A016877.P6491624041334864952

`A016880(n)/(A016873(n)+A001509(n))`
-/

namespace A016877.P6491624041334864952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 n : ℚ) / (A016873 n + A001509 n : ℚ)

end

end A016877.P6491624041334864952

namespace A016877

/-- `A016880(n)/(A016873(n)+A001509(n))` -/
def P6491624041334864952.Spec : Prop :=
  ∀ n, P6491624041334864952.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P12467043964660117032

`A016876(n)/A016879(n)*A016876(n)²`
-/

namespace A016877.P12467043964660117032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n : ℚ) / (A016879 n : ℚ) * (A016876 n ^ 2 : ℚ)

end

end A016877.P12467043964660117032

namespace A016877

/-- `A016876(n)/A016879(n)*A016876(n)²` -/
def P12467043964660117032.Spec : Prop :=
  ∀ n, P12467043964660117032.a n = (A016877 n : ℚ)

end A016877

/-! ## A016877.P2160988797573441116

`(A016882(n)/A016880(n))²*A016873(n)`
-/

namespace A016877.P2160988797573441116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016882 n : ℚ) / (A016880 n : ℚ)) ^ 2 * (A016873 n : ℚ)

end

end A016877.P2160988797573441116

namespace A016877

/-- `(A016882(n)/A016880(n))²*A016873(n)` -/
def P2160988797573441116.Spec : Prop :=
  ∀ n, P2160988797573441116.a n = (A016877 n : ℚ)

end A016877

/-!
# A016878: a(n) = (5*n + 2)^6.

The programs for A016878, the canonical program `A016878.P5221297515916649507` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016878 has offset 0).

The definition of A016878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^6` (program `A016878.P5221297515916649507`, by `A016878.P5221297515916649507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016878.P5221297515916649507

`(5*n+2)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016878

/-- `(5*n+2)^6` -/
def P5221297515916649507.Spec : Prop :=
  ∀ n, (P5221297515916649507.a n : ℤ) = A016878 n

theorem P5221297515916649507.correct : P5221297515916649507.Spec := by
  intro n
  simp only [A016878]

end A016878

/-! ## A016878.P14331932255763186071

`record[(n+2)^(gcd(5, n)+1)]`
-/

namespace A016878.P14331932255763186071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (Nat.gcd 5 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016878.P14331932255763186071

namespace A016878

/-- `record[(n+2)^(gcd(5, n)+1)]` -/
def P14331932255763186071.Spec : Prop :=
  ∀ n, (P14331932255763186071.a n : ℤ) = A016878 n

end A016878

/-! ## A016878.P9887768856524099943

`((record[lcm(2, n+1)]+n)^3)²`
-/

namespace A016878.P9887768856524099943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 3) ^ 2

end

end A016878.P9887768856524099943

namespace A016878

/-- `((record[lcm(2, n+1)]+n)^3)²` -/
def P9887768856524099943.Spec : Prop :=
  ∀ n, (P9887768856524099943.a n : ℤ) = A016878 n

end A016878

/-! ## A016878.P10072651429369581483

`(eq[n+3, lcm(5, n+3)]^3)²`
-/

namespace A016878.P10072651429369581483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016878.P10072651429369581483

namespace A016878

/-- `(eq[n+3, lcm(5, n+3)]^3)²` -/
def P10072651429369581483.Spec : Prop :=
  ∀ n, (P10072651429369581483.a n : ℤ) = A016878 n

end A016878

/-! ## A016878.P1007869558112351264

`A016875(n)²`
-/

namespace A016878.P1007869558112351264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n ^ 2

end

end A016878.P1007869558112351264

namespace A016878

/-- `A016875(n)²` -/
def P1007869558112351264.Spec : Prop :=
  ∀ n, P1007869558112351264.a n = A016878 n

end A016878

/-! ## A016878.P12364360818350799359

`(A016873(n)^3)²`
-/

namespace A016878.P12364360818350799359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n ^ 3) ^ 2

end

end A016878.P12364360818350799359

namespace A016878

/-- `(A016873(n)^3)²` -/
def P12364360818350799359.Spec : Prop :=
  ∀ n, P12364360818350799359.a n = A016878 n

end A016878

/-! ## A016878.P14801056017422606398

`((A004767(n)+n-1)^3)²`
-/

namespace A016878.P14801056017422606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n + ((n : ℤ) - 1)) ^ 3) ^ 2

end

end A016878.P14801056017422606398

namespace A016878

/-- `((A004767(n)+n-1)^3)²` -/
def P14801056017422606398.Spec : Prop :=
  ∀ n, P14801056017422606398.a n = A016878 n

end A016878

/-! ## A016878.P10188986508750832202

`A016873(n)*A016877(n)`
-/

namespace A016878.P10188986508750832202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016877 n

end

end A016878.P10188986508750832202

namespace A016878

/-- `A016873(n)*A016877(n)` -/
def P10188986508750832202.Spec : Prop :=
  ∀ n, P10188986508750832202.a n = A016878 n

end A016878

/-! ## A016878.P13982194174441478637

`A016874(n)*A016876(n)`
-/

namespace A016878.P13982194174441478637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n * A016876 n

end

end A016878.P13982194174441478637

namespace A016878

/-- `A016874(n)*A016876(n)` -/
def P13982194174441478637.Spec : Prop :=
  ∀ n, P13982194174441478637.a n = A016878 n

end A016878

/-! ## A016878.P10452396377854179377

`A016879(n)/A016873(n)`
-/

namespace A016878.P10452396377854179377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 n : ℚ) / (A016873 n : ℚ)

end

end A016878.P10452396377854179377

namespace A016878

/-- `A016879(n)/A016873(n)` -/
def P10452396377854179377.Spec : Prop :=
  ∀ n, P10452396377854179377.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P5131584397665359655

`A016882(n)/A016876(n)`
-/

namespace A016878.P5131584397665359655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016882 n : ℚ) / (A016876 n : ℚ)

end

end A016878.P5131584397665359655

namespace A016878

/-- `A016882(n)/A016876(n)` -/
def P5131584397665359655.Spec : Prop :=
  ∀ n, P5131584397665359655.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P7768180095858069307

`∪[A017298(n), A017358(n)]`
-/

namespace A016878.P7768180095858069307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016878.P7768180095858069307

namespace A016878

/-- `∪[A017298(n), A017358(n)]` -/
def P7768180095858069307.Spec : Prop :=
  ∀ n, (P7768180095858069307.a n : ℤ) = A016878 n

end A016878

/-! ## A016878.P10802631761445438823

`(A016873(n)+A001509(n))²`
-/

namespace A016878.P10802631761445438823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n + A001509 n) ^ 2

end

end A016878.P10802631761445438823

namespace A016878

/-- `(A016873(n)+A001509(n))²` -/
def P10802631761445438823.Spec : Prop :=
  ∀ n, P10802631761445438823.a n = A016878 n

end A016878

/-! ## A016878.P620991168529374929

`(A016873(n)*A016874(n))²`
-/

namespace A016878.P620991168529374929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n * A016874 n) ^ 2

end

end A016878.P620991168529374929

namespace A016878

/-- `(A016873(n)*A016874(n))²` -/
def P620991168529374929.Spec : Prop :=
  ∀ n, P620991168529374929.a n = A016878 n

end A016878

/-! ## A016878.P18100731744302368297

`A016873(n)²*A016876(n)`
-/

namespace A016878.P18100731744302368297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n ^ 2 * A016876 n

end

end A016878.P18100731744302368297

namespace A016878

/-- `A016873(n)²*A016876(n)` -/
def P18100731744302368297.Spec : Prop :=
  ∀ n, P18100731744302368297.a n = A016878 n

end A016878

/-! ## A016878.P10608284631672543534

`(A016877(n)/A016874(n))²`
-/

namespace A016878.P10608284631672543534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016877 n : ℚ) / (A016874 n : ℚ)) ^ 2

end

end A016878.P10608284631672543534

namespace A016878

/-- `(A016877(n)/A016874(n))²` -/
def P10608284631672543534.Spec : Prop :=
  ∀ n, P10608284631672543534.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P4266282905751267156

`A016877(n)²/A016876(n)`
-/

namespace A016878.P4266282905751267156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n ^ 2 : ℚ) / (A016876 n : ℚ)

end

end A016878.P4266282905751267156

namespace A016878

/-- `A016877(n)²/A016876(n)` -/
def P4266282905751267156.Spec : Prop :=
  ∀ n, P4266282905751267156.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P17355550337492233230

`(A016879(n)/A016876(n))²`
-/

namespace A016878.P17355550337492233230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016879 n : ℚ) / (A016876 n : ℚ)) ^ 2

end

end A016878.P17355550337492233230

namespace A016878

/-- `(A016879(n)/A016876(n))²` -/
def P17355550337492233230.Spec : Prop :=
  ∀ n, P17355550337492233230.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P15837624864885855710

`A016880(n)/A016873(n)²`
-/

namespace A016878.P15837624864885855710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 n : ℚ) / (A016873 n ^ 2 : ℚ)

end

end A016878.P15837624864885855710

namespace A016878

/-- `A016880(n)/A016873(n)²` -/
def P15837624864885855710.Spec : Prop :=
  ∀ n, P15837624864885855710.a n = (A016878 n : ℚ)

end A016878

/-! ## A016878.P8262648179768798041

`(A016880(n)/A016877(n))²`
-/

namespace A016878.P8262648179768798041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016880 n : ℚ) / (A016877 n : ℚ)) ^ 2

end

end A016878.P8262648179768798041

namespace A016878

/-- `(A016880(n)/A016877(n))²` -/
def P8262648179768798041.Spec : Prop :=
  ∀ n, P8262648179768798041.a n = (A016878 n : ℚ)

end A016878

/-!
# A016879: a(n) = (5*n + 2)^7.

The programs for A016879, the canonical program `A016879.P9881379482011814406` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016879 has offset 0).

The definition of A016879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^7` (program `A016879.P9881379482011814406`, by `A016879.P9881379482011814406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016879.P9881379482011814406

`(5*n+2)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016879

/-- `(5*n+2)^7` -/
def P9881379482011814406.Spec : Prop :=
  ∀ n, (P9881379482011814406.a n : ℤ) = A016879 n

theorem P9881379482011814406.correct : P9881379482011814406.Spec := by
  intro n
  simp only [A016879]

end A016879

/-! ## A016879.P15022377918021511049

`floor(sqrt(A016874(n))^7)`
-/

namespace A016879.P15022377918021511049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A016874 n : ℝ) ^ 7⌋

end

end A016879.P15022377918021511049

namespace A016879

/-- `floor(sqrt(A016874(n))^7)` -/
def P15022377918021511049.Spec : Prop :=
  ∀ n, P15022377918021511049.a n = A016879 n

end A016879

/-! ## A016879.P8409967856043984313

`abs((1-A016885(n))^7)`
-/

namespace A016879.P8409967856043984313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A016885 n) ^ 7|

end

end A016879.P8409967856043984313

namespace A016879

/-- `abs((1-A016885(n))^7)` -/
def P8409967856043984313.Spec : Prop :=
  ∀ n, P8409967856043984313.a n = A016879 n

end A016879

/-! ## A016879.P8558070463603055986

`abs((A016897(n)-2)^7)`
-/

namespace A016879.P8558070463603055986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016897 n - 2) ^ 7|

end

end A016879.P8558070463603055986

namespace A016879

/-- `abs((A016897(n)-2)^7)` -/
def P8558070463603055986.Spec : Prop :=
  ∀ n, P8558070463603055986.a n = A016879 n

end A016879

/-! ## A016879.P8752448382657886309

`A016880(n)/(5*n+2)`
-/

namespace A016879.P8752448382657886309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 n : ℚ) / (5 * n + 2 : ℚ)

end

end A016879.P8752448382657886309

namespace A016879

/-- `A016880(n)/(5*n+2)` -/
def P8752448382657886309.Spec : Prop :=
  ∀ n, P8752448382657886309.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P8057417611097665438

`record[(A014682(n+1)+n)^7]`
-/

namespace A016879.P8057417611097665438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014682 (n + 1) + (n : ℤ)) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016879.P8057417611097665438

namespace A016879

/-- `record[(A014682(n+1)+n)^7]` -/
def P8057417611097665438.Spec : Prop :=
  ∀ n, P8057417611097665438.a n = A016879 n

end A016879

/-! ## A016879.P4047260947028340071

`A016873(n)*A016878(n)`
-/

namespace A016879.P4047260947028340071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016878 n

end

end A016879.P4047260947028340071

namespace A016879

/-- `A016873(n)*A016878(n)` -/
def P4047260947028340071.Spec : Prop :=
  ∀ n, P4047260947028340071.a n = A016879 n

end A016879

/-! ## A016879.P16442336250585400300

`A016874(n)*A016877(n)`
-/

namespace A016879.P16442336250585400300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n * A016877 n

end

end A016879.P16442336250585400300

namespace A016879

/-- `A016874(n)*A016877(n)` -/
def P16442336250585400300.Spec : Prop :=
  ∀ n, P16442336250585400300.a n = A016879 n

end A016879

/-! ## A016879.P7783063261779519194

`A016875(n)*A016876(n)`
-/

namespace A016879.P7783063261779519194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n * A016876 n

end

end A016879.P7783063261779519194

namespace A016879

/-- `A016875(n)*A016876(n)` -/
def P7783063261779519194.Spec : Prop :=
  ∀ n, P7783063261779519194.a n = A016879 n

end A016879

/-! ## A016879.P1559749314677175015

`A016873(n)²*A016877(n)`
-/

namespace A016879.P1559749314677175015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n ^ 2 * A016877 n

end

end A016879.P1559749314677175015

namespace A016879

/-- `A016873(n)²*A016877(n)` -/
def P1559749314677175015.Spec : Prop :=
  ∀ n, P1559749314677175015.a n = A016879 n

end A016879

/-! ## A016879.P5861929429137004590

`A016874(n)²*A016875(n)`
-/

namespace A016879.P5861929429137004590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n ^ 2 * A016875 n

end

end A016879.P5861929429137004590

namespace A016879

/-- `A016874(n)²*A016875(n)` -/
def P5861929429137004590.Spec : Prop :=
  ∀ n, P5861929429137004590.a n = A016879 n

end A016879

/-! ## A016879.P11015153256879456210

`A016875(n)²*A016873(n)`
-/

namespace A016879.P11015153256879456210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n ^ 2 * A016873 n

end

end A016879.P11015153256879456210

namespace A016879

/-- `A016875(n)²*A016873(n)` -/
def P11015153256879456210.Spec : Prop :=
  ∀ n, P11015153256879456210.a n = A016879 n

end A016879

/-! ## A016879.P1128227173454514233

`A016876(n)²/A016873(n)`
-/

namespace A016879.P1128227173454514233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n ^ 2 : ℚ) / (A016873 n : ℚ)

end

end A016879.P1128227173454514233

namespace A016879

/-- `A016876(n)²/A016873(n)` -/
def P1128227173454514233.Spec : Prop :=
  ∀ n, P1128227173454514233.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P7099662025253621362

`A016877(n)²/A016875(n)`
-/

namespace A016879.P7099662025253621362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n ^ 2 : ℚ) / (A016875 n : ℚ)

end

end A016879.P7099662025253621362

namespace A016879

/-- `A016877(n)²/A016875(n)` -/
def P7099662025253621362.Spec : Prop :=
  ∀ n, P7099662025253621362.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P2711813191029965832

`A016874(n)²²/A016873(n)`
-/

namespace A016879.P2711813191029965832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016874 n ^ 2) ^ 2 : ℚ) / (A016873 n : ℚ)

end

end A016879.P2711813191029965832

namespace A016879

/-- `A016874(n)²²/A016873(n)` -/
def P2711813191029965832.Spec : Prop :=
  ∀ n, P2711813191029965832.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P15570468156785329871

`A016882(n)/(A016873(n)+A001509(n))`
-/

namespace A016879.P15570468156785329871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016882 n : ℚ) / (A016873 n + A001509 n : ℚ)

end

end A016879.P15570468156785329871

namespace A016879

/-- `A016882(n)/(A016873(n)+A001509(n))` -/
def P15570468156785329871.Spec : Prop :=
  ∀ n, P15570468156785329871.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P8279988592530487913

`(A016882(n)-A016880(n))/A001509(n)`
-/

namespace A016879.P8279988592530487913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016882 n - A016880 n : ℚ) / (A001509 n : ℚ)

end

end A016879.P8279988592530487913

namespace A016879

/-- `(A016882(n)-A016880(n))/A001509(n)` -/
def P8279988592530487913.Spec : Prop :=
  ∀ n, P8279988592530487913.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P15955433609722619173

`A016876(n)/A016877(n)*A016876(n)²`
-/

namespace A016879.P15955433609722619173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n : ℚ) / (A016877 n : ℚ) * (A016876 n ^ 2 : ℚ)

end

end A016879.P15955433609722619173

namespace A016879

/-- `A016876(n)/A016877(n)*A016876(n)²` -/
def P15955433609722619173.Spec : Prop :=
  ∀ n, P15955433609722619173.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P7282173249599282270

`A016877(n)/A016880(n)*A016877(n)²`
-/

namespace A016879.P7282173249599282270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n : ℚ) / (A016880 n : ℚ) * (A016877 n ^ 2 : ℚ)

end

end A016879.P7282173249599282270

namespace A016879

/-- `A016877(n)/A016880(n)*A016877(n)²` -/
def P7282173249599282270.Spec : Prop :=
  ∀ n, P7282173249599282270.a n = (A016879 n : ℚ)

end A016879

/-! ## A016879.P9577380873043529983

`abs(Δ[A005476(n)]^7)`
-/

namespace A016879.P9577380873043529983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ 7|

end

end A016879.P9577380873043529983

namespace A016879

/-- `abs(Δ[A005476(n)]^7)` -/
def P9577380873043529983.Spec : Prop :=
  ∀ n, P9577380873043529983.a n = A016879 n

end A016879

/-!
# A016880: a(n) = (5*n+2)^8.

The programs for A016880, the canonical program `A016880.P10254929196614950629` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016880 has offset 0).

The definition of A016880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^8` (program `A016880.P10254929196614950629`, by `A016880.P10254929196614950629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016880.P10254929196614950629

`(5*n+2)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016880

/-- `(5*n+2)^8` -/
def P10254929196614950629.Spec : Prop :=
  ∀ n, (P10254929196614950629.a n : ℤ) = A016880 n

theorem P10254929196614950629.correct : P10254929196614950629.Spec := by
  intro n
  simp only [A016880]

end A016880

/-! ## A016880.P16067436927298749069

`A001016(A016873(n))`
-/

namespace A016880.P16067436927298749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A016873 n).toNat

end

end A016880.P16067436927298749069

namespace A016880

/-- `A001016(A016873(n))` -/
def P16067436927298749069.Spec : Prop :=
  ∀ n, P16067436927298749069.a n = A016880 n

end A016880

/-! ## A016880.P1428381553434350024

`(record[xor(3, n)]+n-1)²²²`
-/

namespace A016880.P1428381553434350024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2) ^ 2

end

end A016880.P1428381553434350024

namespace A016880

/-- `(record[xor(3, n)]+n-1)²²²` -/
def P1428381553434350024.Spec : Prop :=
  ∀ n, P1428381553434350024.a n = A016880 n

end A016880

/-! ## A016880.P1301756515743315079

`(eq[n+3, lcm(5, n+3)]^4)²`
-/

namespace A016880.P1301756515743315079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4) ^ 2

end

end A016880.P1301756515743315079

namespace A016880

/-- `(eq[n+3, lcm(5, n+3)]^4)²` -/
def P1301756515743315079.Spec : Prop :=
  ∀ n, (P1301756515743315079.a n : ℤ) = A016880 n

end A016880

/-! ## A016880.P11802343633158042288

`(lcm(2, 2*n+1)+n)²²²`
-/

namespace A016880.P11802343633158042288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 2 (2 * n + 1) + n) ^ 2) ^ 2) ^ 2

end

end A016880.P11802343633158042288

namespace A016880

/-- `(lcm(2, 2*n+1)+n)²²²` -/
def P11802343633158042288.Spec : Prop :=
  ∀ n, (P11802343633158042288.a n : ℤ) = A016880 n

end A016880

/-! ## A016880.P15822049297148490296

`(Δ[C(2*n, 2)]+n+1)²²²`
-/

namespace A016880.P15822049297148490296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016880.P15822049297148490296

namespace A016880

/-- `(Δ[C(2*n, 2)]+n+1)²²²` -/
def P15822049297148490296.Spec : Prop :=
  ∀ n, P15822049297148490296.a n = A016880 n

end A016880

/-! ## A016880.P6203722746570246307

`A016876(n)²`
-/

namespace A016880.P6203722746570246307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n ^ 2

end

end A016880.P6203722746570246307

namespace A016880

/-- `A016876(n)²` -/
def P6203722746570246307.Spec : Prop :=
  ∀ n, P6203722746570246307.a n = A016880 n

end A016880

/-! ## A016880.P10232666658070595738

`A016874(n)²²`
-/

namespace A016880.P10232666658070595738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 n ^ 2) ^ 2

end

end A016880.P10232666658070595738

namespace A016880

/-- `A016874(n)²²` -/
def P10232666658070595738.Spec : Prop :=
  ∀ n, P10232666658070595738.a n = A016880 n

end A016880

/-! ## A016880.P9033618449123433880

`(A016861(n)+1)²²²`
-/

namespace A016880.P9033618449123433880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016861 n + 1) ^ 2) ^ 2) ^ 2

end

end A016880.P9033618449123433880

namespace A016880

/-- `(A016861(n)+1)²²²` -/
def P9033618449123433880.Spec : Prop :=
  ∀ n, P9033618449123433880.a n = A016880 n

end A016880

/-! ## A016880.P13326418283897238942

`(A008587(n)+2)²²²`
-/

namespace A016880.P13326418283897238942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008587 n + 2) ^ 2) ^ 2) ^ 2

end

end A016880.P13326418283897238942

namespace A016880

/-- `(A008587(n)+2)²²²` -/
def P13326418283897238942.Spec : Prop :=
  ∀ n, P13326418283897238942.a n = A016880 n

end A016880

/-! ## A016880.P9708495613576974272

`(1-A016885(n))²²²`
-/

namespace A016880.P9708495613576974272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016885 n) ^ 2) ^ 2) ^ 2

end

end A016880.P9708495613576974272

namespace A016880

/-- `(1-A016885(n))²²²` -/
def P9708495613576974272.Spec : Prop :=
  ∀ n, P9708495613576974272.a n = A016880 n

end A016880

/-! ## A016880.P16637580724288497563

`(2-A016897(n))²²²`
-/

namespace A016880.P16637580724288497563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A016897 n) ^ 2) ^ 2) ^ 2

end

end A016880.P16637580724288497563

namespace A016880

/-- `(2-A016897(n))²²²` -/
def P16637580724288497563.Spec : Prop :=
  ∀ n, P16637580724288497563.a n = A016880 n

end A016880

/-! ## A016880.P16624427478656021659

`(A017317(n)/2)²²²`
-/

namespace A016880.P16624427478656021659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017317 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016880.P16624427478656021659

namespace A016880

/-- `(A017317(n)/2)²²²` -/
def P16624427478656021659.Spec : Prop :=
  ∀ n, P16624427478656021659.a n = (A016880 n : ℚ)

end A016880

/-! ## A016880.P5925026116342970977

`(A016825(n)+n)²²²`
-/

namespace A016880.P5925026116342970977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016825 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016880.P5925026116342970977

namespace A016880

/-- `(A016825(n)+n)²²²` -/
def P5925026116342970977.Spec : Prop :=
  ∀ n, P5925026116342970977.a n = A016880 n

end A016880

/-! ## A016880.P11582802767411201668

`(n-A016933(n))²²²`
-/

namespace A016880.P11582802767411201668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A016933 n) ^ 2) ^ 2) ^ 2

end

end A016880.P11582802767411201668

namespace A016880

/-- `(n-A016933(n))²²²` -/
def P11582802767411201668.Spec : Prop :=
  ∀ n, P11582802767411201668.a n = A016880 n

end A016880

/-! ## A016880.P10875724882651024351

`A000027(5*n+2)²²²`
-/

namespace A016880.P10875724882651024351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000027 (5 * n + 2) ^ 2) ^ 2) ^ 2

end

end A016880.P10875724882651024351

namespace A016880

/-- `A000027(5*n+2)²²²` -/
def P10875724882651024351.Spec : Prop :=
  ∀ n, P10875724882651024351.a n = A016880 n

end A016880

/-! ## A016880.P5559654595600985590

`A016873(n)*A016879(n)`
-/

namespace A016880.P5559654595600985590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016879 n

end

end A016880.P5559654595600985590

namespace A016880

/-- `A016873(n)*A016879(n)` -/
def P5559654595600985590.Spec : Prop :=
  ∀ n, P5559654595600985590.a n = A016880 n

end A016880

/-! ## A016880.P14187174607689715996

`A016874(n)*A016878(n)`
-/

namespace A016880.P14187174607689715996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n * A016878 n

end

end A016880.P14187174607689715996

namespace A016880

/-- `A016874(n)*A016878(n)` -/
def P14187174607689715996.Spec : Prop :=
  ∀ n, P14187174607689715996.a n = A016880 n

end A016880

/-! ## A016880.P16409184754058620064

`A016875(n)*A016877(n)`
-/

namespace A016880.P16409184754058620064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n * A016877 n

end

end A016880.P16409184754058620064

namespace A016880

/-- `A016875(n)*A016877(n)` -/
def P16409184754058620064.Spec : Prop :=
  ∀ n, P16409184754058620064.a n = A016880 n

end A016880

/-! ## A016880.P3806524922056438191

`A016882(n)/A016873(n)²`
-/

namespace A016880.P3806524922056438191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016882 n : ℚ) / (A016873 n ^ 2 : ℚ)

end

end A016880.P3806524922056438191

namespace A016880

/-- `A016882(n)/A016873(n)²` -/
def P3806524922056438191.Spec : Prop :=
  ∀ n, P3806524922056438191.a n = (A016880 n : ℚ)

end A016880

/-!
# A016881: a(n) = (5n+2)^9.

The programs for A016881, the canonical program `A016881.P1540911032170598906` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016881 has offset 0).

The definition of A016881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^9` (program `A016881.P1540911032170598906`, by `A016881.P1540911032170598906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016881.P1540911032170598906

`(5*n+2)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016881

/-- `(5*n+2)^9` -/
def P1540911032170598906.Spec : Prop :=
  ∀ n, (P1540911032170598906.a n : ℤ) = A016881 n

theorem P1540911032170598906.correct : P1540911032170598906.Spec := by
  intro n
  simp only [A016881]

end A016881

/-! ## A016881.P12448117768410735110

`A016880(n)*(5*n+2)`
-/

namespace A016881.P12448117768410735110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016880 n * (5 * n + 2 : ℤ)

end

end A016881.P12448117768410735110

namespace A016881

/-- `A016880(n)*(5*n+2)` -/
def P12448117768410735110.Spec : Prop :=
  ∀ n, P12448117768410735110.a n = A016881 n

end A016881

/-! ## A016881.P13494268616659631650

`A016882(n)/(5*n+2)`
-/

namespace A016881.P13494268616659631650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016882 n : ℚ) / (5 * n + 2 : ℚ)

end

end A016881.P13494268616659631650

namespace A016881

/-- `A016882(n)/(5*n+2)` -/
def P13494268616659631650.Spec : Prop :=
  ∀ n, P13494268616659631650.a n = (A016881 n : ℚ)

end A016881

/-! ## A016881.P13928610410964415697

`A016873(n)*A016880(n)`
-/

namespace A016881.P13928610410964415697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016880 n

end

end A016881.P13928610410964415697

namespace A016881

/-- `A016873(n)*A016880(n)` -/
def P13928610410964415697.Spec : Prop :=
  ∀ n, P13928610410964415697.a n = A016881 n

end A016881

/-! ## A016881.P11549088919590544839

`A016874(n)*A016879(n)`
-/

namespace A016881.P11549088919590544839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n * A016879 n

end

end A016881.P11549088919590544839

namespace A016881

/-- `A016874(n)*A016879(n)` -/
def P11549088919590544839.Spec : Prop :=
  ∀ n, P11549088919590544839.a n = A016881 n

end A016881

/-! ## A016881.P8270472085518450588

`A016875(n)*A016878(n)`
-/

namespace A016881.P8270472085518450588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n * A016878 n

end

end A016881.P8270472085518450588

namespace A016881

/-- `A016875(n)*A016878(n)` -/
def P8270472085518450588.Spec : Prop :=
  ∀ n, P8270472085518450588.a n = A016881 n

end A016881

/-! ## A016881.P18091882468434917782

`A016876(n)*A016877(n)`
-/

namespace A016881.P18091882468434917782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n * A016877 n

end

end A016881.P18091882468434917782

namespace A016881

/-- `A016876(n)*A016877(n)` -/
def P18091882468434917782.Spec : Prop :=
  ∀ n, P18091882468434917782.a n = A016881 n

end A016881

/-! ## A016881.P11104487865015975774

`A016873(n)²*A016879(n)`
-/

namespace A016881.P11104487865015975774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n ^ 2 * A016879 n

end

end A016881.P11104487865015975774

namespace A016881

/-- `A016873(n)²*A016879(n)` -/
def P11104487865015975774.Spec : Prop :=
  ∀ n, P11104487865015975774.a n = A016881 n

end A016881

/-! ## A016881.P2314790106070495024

`A016874(n)²*A016877(n)`
-/

namespace A016881.P2314790106070495024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n ^ 2 * A016877 n

end

end A016881.P2314790106070495024

namespace A016881

/-- `A016874(n)²*A016877(n)` -/
def P2314790106070495024.Spec : Prop :=
  ∀ n, P2314790106070495024.a n = A016881 n

end A016881

/-! ## A016881.P2689153822000419240

`A016876(n)²*A016873(n)`
-/

namespace A016881.P2689153822000419240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n ^ 2 * A016873 n

end

end A016881.P2689153822000419240

namespace A016881

/-- `A016876(n)²*A016873(n)` -/
def P2689153822000419240.Spec : Prop :=
  ∀ n, P2689153822000419240.a n = A016881 n

end A016881

/-! ## A016881.P1257048972514807461

`A016877(n)²/A016873(n)`
-/

namespace A016881.P1257048972514807461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016877 n ^ 2 : ℚ) / (A016873 n : ℚ)

end

end A016881.P1257048972514807461

namespace A016881

/-- `A016877(n)²/A016873(n)` -/
def P1257048972514807461.Spec : Prop :=
  ∀ n, P1257048972514807461.a n = (A016881 n : ℚ)

end A016881

/-! ## A016881.P16583250861003628959

`(A016861(n)+1)*A016880(n)`
-/

namespace A016881.P16583250861003628959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + 1) * A016880 n

end

end A016881.P16583250861003628959

namespace A016881

/-- `(A016861(n)+1)*A016880(n)` -/
def P16583250861003628959.Spec : Prop :=
  ∀ n, P16583250861003628959.a n = A016881 n

end A016881

/-! ## A016881.P15511029328465023774

`(A016885(n)-1)*A016880(n)`
-/

namespace A016881.P15511029328465023774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n - 1) * A016880 n

end

end A016881.P15511029328465023774

namespace A016881

/-- `(A016885(n)-1)*A016880(n)` -/
def P15511029328465023774.Spec : Prop :=
  ∀ n, P15511029328465023774.a n = A016881 n

end A016881

/-! ## A016881.P11933847124401257231

`A016874(n)²²*A016873(n)`
-/

namespace A016881.P11933847124401257231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 n ^ 2) ^ 2 * A016873 n

end

end A016881.P11933847124401257231

namespace A016881

/-- `A016874(n)²²*A016873(n)` -/
def P11933847124401257231.Spec : Prop :=
  ∀ n, P11933847124401257231.a n = A016881 n

end A016881

/-! ## A016881.P9542500235504705303

`A016873(n)*A016878(n)*A016873(n)²`
-/

namespace A016881.P9542500235504705303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016878 n * A016873 n ^ 2

end

end A016881.P9542500235504705303

namespace A016881

/-- `A016873(n)*A016878(n)*A016873(n)²` -/
def P9542500235504705303.Spec : Prop :=
  ∀ n, P9542500235504705303.a n = A016881 n

end A016881

/-! ## A016881.P6369426110991161777

`A001017(5*n+2)`
-/

namespace A016881.P6369426110991161777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (5 * n + 2)

end

end A016881.P6369426110991161777

namespace A016881

/-- `A001017(5*n+2)` -/
def P6369426110991161777.Spec : Prop :=
  ∀ n, P6369426110991161777.a n = A016881 n

end A016881

/-!
# A016882: a(n) = (5n+2)^10.

The programs for A016882, the canonical program `A016882.P8918994379793123984` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016882 has offset 0).

The definition of A016882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^10` (program `A016882.P8918994379793123984`, by `A016882.P8918994379793123984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016882.P8918994379793123984

`(5*n+2)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016882

/-- `(5*n+2)^10` -/
def P8918994379793123984.Spec : Prop :=
  ∀ n, (P8918994379793123984.a n : ℤ) = A016882 n

theorem P8918994379793123984.correct : P8918994379793123984.Spec := by
  intro n
  simp only [A016882]

end A016882

/-! ## A016882.P14409618609396540427

`A008454(A016873(n))`
-/

namespace A016882.P14409618609396540427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016873 n).toNat

end

end A016882.P14409618609396540427

namespace A016882

/-- `A008454(A016873(n))` -/
def P14409618609396540427.Spec : Prop :=
  ∀ n, P14409618609396540427.a n = A016882 n

end A016882

/-! ## A016882.P5086857260092722805

`record[((n+2)^gcd(5, n))²]`
-/

namespace A016882.P5086857260092722805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 5 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016882.P5086857260092722805

namespace A016882

/-- `record[((n+2)^gcd(5, n))²]` -/
def P5086857260092722805.Spec : Prop :=
  ∀ n, (P5086857260092722805.a n : ℤ) = A016882 n

end A016882

/-! ## A016882.P4731137270162806556

`(eq[n+3, lcm(5, n+3)]^5)²`
-/

namespace A016882.P4731137270162806556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016882.P4731137270162806556

namespace A016882

/-- `(eq[n+3, lcm(5, n+3)]^5)²` -/
def P4731137270162806556.Spec : Prop :=
  ∀ n, (P4731137270162806556.a n : ℤ) = A016882 n

end A016882

/-! ## A016882.P2474761214372068793

`A016877(n)²`
-/

namespace A016882.P2474761214372068793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016877 n ^ 2

end

end A016882.P2474761214372068793

namespace A016882

/-- `A016877(n)²` -/
def P2474761214372068793.Spec : Prop :=
  ∀ n, P2474761214372068793.a n = A016882 n

end A016882

/-! ## A016882.P3272118552504887533

`((A016897(n)-2)^5)²`
-/

namespace A016882.P3272118552504887533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016897 n - 2) ^ 5) ^ 2

end

end A016882.P3272118552504887533

namespace A016882

/-- `((A016897(n)-2)^5)²` -/
def P3272118552504887533.Spec : Prop :=
  ∀ n, P3272118552504887533.a n = A016882 n

end A016882

/-! ## A016882.P9072834276019868884

`((A004767(n)+n-1)^5)²`
-/

namespace A016882.P9072834276019868884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n + ((n : ℤ) - 1)) ^ 5) ^ 2

end

end A016882.P9072834276019868884

namespace A016882

/-- `((A004767(n)+n-1)^5)²` -/
def P9072834276019868884.Spec : Prop :=
  ∀ n, P9072834276019868884.a n = A016882 n

end A016882

/-! ## A016882.P3268957736568624418

`A016875(n)*A016879(n)`
-/

namespace A016882.P3268957736568624418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n * A016879 n

end

end A016882.P3268957736568624418

namespace A016882

/-- `A016875(n)*A016879(n)` -/
def P3268957736568624418.Spec : Prop :=
  ∀ n, P3268957736568624418.a n = A016882 n

end A016882

/-! ## A016882.P10103212999310638973

`A016876(n)*A016878(n)`
-/

namespace A016882.P10103212999310638973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n * A016878 n

end

end A016882.P10103212999310638973

namespace A016882

/-- `A016876(n)*A016878(n)` -/
def P10103212999310638973.Spec : Prop :=
  ∀ n, P10103212999310638973.a n = A016882 n

end A016882

/-! ## A016882.P12799149345478094809

`(A016873(n)*A016876(n))²`
-/

namespace A016882.P12799149345478094809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n * A016876 n) ^ 2

end

end A016882.P12799149345478094809

namespace A016882

/-- `(A016873(n)*A016876(n))²` -/
def P12799149345478094809.Spec : Prop :=
  ∀ n, P12799149345478094809.a n = A016882 n

end A016882

/-! ## A016882.P1746960747639321999

`A016873(n)²*A016880(n)`
-/

namespace A016882.P1746960747639321999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n ^ 2 * A016880 n

end

end A016882.P1746960747639321999

namespace A016882

/-- `A016873(n)²*A016880(n)` -/
def P1746960747639321999.Spec : Prop :=
  ∀ n, P1746960747639321999.a n = A016882 n

end A016882

/-! ## A016882.P10915156785396555029

`(A016874(n)*A016875(n))²`
-/

namespace A016882.P10915156785396555029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 n * A016875 n) ^ 2

end

end A016882.P10915156785396555029

namespace A016882

/-- `(A016874(n)*A016875(n))²` -/
def P10915156785396555029.Spec : Prop :=
  ∀ n, P10915156785396555029.a n = A016882 n

end A016882

/-! ## A016882.P11795454223977077032

`A016874(n)²*A016878(n)`
-/

namespace A016882.P11795454223977077032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n ^ 2 * A016878 n

end

end A016882.P11795454223977077032

namespace A016882

/-- `A016874(n)²*A016878(n)` -/
def P11795454223977077032.Spec : Prop :=
  ∀ n, P11795454223977077032.a n = A016882 n

end A016882

/-! ## A016882.P1452040193260315905

`A016875(n)²*A016876(n)`
-/

namespace A016882.P1452040193260315905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n ^ 2 * A016876 n

end

end A016882.P1452040193260315905

namespace A016882

/-- `A016875(n)²*A016876(n)` -/
def P1452040193260315905.Spec : Prop :=
  ∀ n, P1452040193260315905.a n = A016882 n

end A016882

/-! ## A016882.P12136885866142168

`A016876(n)²*A016874(n)`
-/

namespace A016882.P12136885866142168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n ^ 2 * A016874 n

end

end A016882.P12136885866142168

namespace A016882

/-- `A016876(n)²*A016874(n)` -/
def P12136885866142168.Spec : Prop :=
  ∀ n, P12136885866142168.a n = A016882 n

end A016882

/-! ## A016882.P15427507821527554966

`(A016878(n)/A016873(n))²`
-/

namespace A016882.P15427507821527554966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016878 n : ℚ) / (A016873 n : ℚ)) ^ 2

end

end A016882.P15427507821527554966

namespace A016882

/-- `(A016878(n)/A016873(n))²` -/
def P15427507821527554966.Spec : Prop :=
  ∀ n, P15427507821527554966.a n = (A016882 n : ℚ)

end A016882

/-! ## A016882.P14549690010855730658

`(A016879(n)/A016874(n))²`
-/

namespace A016882.P14549690010855730658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016879 n : ℚ) / (A016874 n : ℚ)) ^ 2

end

end A016882.P14549690010855730658

namespace A016882

/-- `(A016879(n)/A016874(n))²` -/
def P14549690010855730658.Spec : Prop :=
  ∀ n, P14549690010855730658.a n = (A016882 n : ℚ)

end A016882

/-! ## A016882.P17111673080015870469

`∪[A017297(n), A017357(n)]²`
-/

namespace A016882.P17111673080015870469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017357 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016882.P17111673080015870469

namespace A016882

/-- `∪[A017297(n), A017357(n)]²` -/
def P17111673080015870469.Spec : Prop :=
  ∀ n, (P17111673080015870469.a n : ℤ) = A016882 n

end A016882

/-! ## A016882.P1431587488316888929

`(A016873(n)²*A016875(n))²`
-/

namespace A016882.P1431587488316888929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n ^ 2 * A016875 n) ^ 2

end

end A016882.P1431587488316888929

namespace A016882

/-- `(A016873(n)²*A016875(n))²` -/
def P1431587488316888929.Spec : Prop :=
  ∀ n, P1431587488316888929.a n = A016882 n

end A016882

/-!
# A016883: a(n) = (5*n + 2)^11.

The programs for A016883, the canonical program `A016883.P15193093140141864191` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016883 has offset 0).

The definition of A016883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)^11` (program `A016883.P15193093140141864191`, by `A016883.P15193093140141864191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016883.P15193093140141864191

`(5*n+2)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016883

/-- `(5*n+2)^11` -/
def P15193093140141864191.Spec : Prop :=
  ∀ n, (P15193093140141864191.a n : ℤ) = A016883 n

theorem P15193093140141864191.correct : P15193093140141864191.Spec := by
  intro n
  simp only [A016883]

end A016883

/-! ## A016883.P3239284152514589049

`A016873(n)*A016882(n)`
-/

namespace A016883.P3239284152514589049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016882 n

end

end A016883.P3239284152514589049

namespace A016883

/-- `A016873(n)*A016882(n)` -/
def P3239284152514589049.Spec : Prop :=
  ∀ n, P3239284152514589049.a n = A016883 n

end A016883

/-! ## A016883.P9403753647208469915

`A016876(n)*A016879(n)`
-/

namespace A016883.P9403753647208469915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n * A016879 n

end

end A016883.P9403753647208469915

namespace A016883

/-- `A016876(n)*A016879(n)` -/
def P9403753647208469915.Spec : Prop :=
  ∀ n, P9403753647208469915.a n = A016883 n

end A016883

/-! ## A016883.P2369103347120131636

`A016877(n)*A016878(n)`
-/

namespace A016883.P2369103347120131636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016877 n * A016878 n

end

end A016883.P2369103347120131636

namespace A016883

/-- `A016877(n)*A016878(n)` -/
def P2369103347120131636.Spec : Prop :=
  ∀ n, P2369103347120131636.a n = A016883 n

end A016883

/-! ## A016883.P5995424924229988676

`A016876(n)/A016873(n)*A016880(n)`
-/

namespace A016883.P5995424924229988676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n : ℚ) / (A016873 n : ℚ) * (A016880 n : ℚ)

end

end A016883.P5995424924229988676

namespace A016883

/-- `A016876(n)/A016873(n)*A016880(n)` -/
def P5995424924229988676.Spec : Prop :=
  ∀ n, P5995424924229988676.a n = (A016883 n : ℚ)

end A016883

/-! ## A016883.P5897607555238360506

`A008455(A016873(n))`
-/

namespace A016883.P5897607555238360506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016873 n).toNat

end

end A016883.P5897607555238360506

namespace A016883

/-- `A008455(A016873(n))` -/
def P5897607555238360506.Spec : Prop :=
  ∀ n, P5897607555238360506.a n = A016883 n

end A016883

/-!
# A016884: 

The programs for A016884, there is no canonical definition to state claims against.
-/

/-! ## A016884.P4736742285095752556

`A016878(n)²`
-/

namespace A016884.P4736742285095752556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016878 n ^ 2

end

end A016884.P4736742285095752556

/-! ## A016884.P2676821691831559942

`A016876(n)^3`
-/

namespace A016884.P2676821691831559942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n ^ 3

end

end A016884.P2676821691831559942

/-! ## A016884.P16399449092878134793

`A016875(n)^4`
-/

namespace A016884.P16399449092878134793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n ^ 4

end

end A016884.P16399449092878134793

/-! ## A016884.P2085836327339503168

`A016876(n)*A016880(n)`
-/

namespace A016884.P2085836327339503168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 n * A016880 n

end

end A016884.P2085836327339503168

/-! ## A016884.P8571926858468274257

`A001016(A016873(n))*A016876(n)`
-/

namespace A016884.P8571926858468274257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A016873 n).toNat * A016876 n

end

end A016884.P8571926858468274257

/-!
# A016885: a(n) = 5*n + 3.

The programs for A016885, the canonical program `A016885.P12442016633976001399` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016885 has offset 0).

The definition of A016885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+3` (program `A016885.P12442016633976001399`, by `A016885.P12442016633976001399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016885.P12442016633976001399

`5*n+3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016885

/-- `5*n+3` -/
def P12442016633976001399.Spec : Prop :=
  ∀ n, (P12442016633976001399.a n : ℤ) = A016885 n

theorem P12442016633976001399.correct : P12442016633976001399.Spec := by
  intro n
  simp only [A016885]

end A016885

/-!
# A016886: a(n) = (5*n + 3)^2.

The programs for A016886, the canonical program `A016886.P17506654077827832753` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016886 has offset 0).

The definition of A016886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)²` (program `A016886.P17506654077827832753`, by `A016886.P17506654077827832753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016886.P17506654077827832753

`(5*n+3)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016886

/-- `(5*n+3)²` -/
def P17506654077827832753.Spec : Prop :=
  ∀ n, (P17506654077827832753.a n : ℤ) = A016886 n

theorem P17506654077827832753.correct : P17506654077827832753.Spec := by
  intro n
  simp only [A016886]

end A016886

/-! ## A016886.P3962140664195987702

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=64, a(2)=169`
-/

namespace A016886.P3962140664195987702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 64, 169] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016886.P3962140664195987702

namespace A016886

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3962140664195987702.Spec : Prop :=
  ∀ n, P3962140664195987702.a n = A016886 n

theorem P3962140664195987702.correct : P3962140664195987702.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016886, Nat.add_sub_cancel, A016886.P3962140664195987702.a, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016886, Nat.add_sub_cancel, A016886.P3962140664195987702.a, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016886

/-! ## A016886.P16499010563902865501

`A000290(A016885(n))`
-/

namespace A016886.P16499010563902865501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016885 n).toNat

end

end A016886.P16499010563902865501

namespace A016886

/-- `A000290(A016885(n))` -/
def P16499010563902865501.Spec : Prop :=
  ∀ n, P16499010563902865501.a n = A016886 n

end A016886

/-! ## A016886.P17252082955679604511

`record[(gcd(5, n)+n-2)²]`
-/

namespace A016886.P17252082955679604511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016886.P17252082955679604511

namespace A016886

/-- `record[(gcd(5, n)+n-2)²]` -/
def P17252082955679604511.Spec : Prop :=
  ∀ n, P17252082955679604511.a n = A016886 n

end A016886

/-! ## A016886.P15190117550113015349

`record[(2-abs(5*(1-n)))²]`
-/

namespace A016886.P15190117550113015349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - |5 * (1 - (n : ℤ))|) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016886.P15190117550113015349

namespace A016886

/-- `record[(2-abs(5*(1-n)))²]` -/
def P15190117550113015349.Spec : Prop :=
  ∀ n, P15190117550113015349.a n = A016886 n

end A016886

/-! ## A016886.P11244693853615113697

`floor((∑[a(n-1)+2]-n²)²)` with `a(0)=3, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A016886.P11244693853615113697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2

end

end A016886.P11244693853615113697

namespace A016886

/-- `floor((∑[a(n-1)+2]-n²)²)` -/
def P11244693853615113697.Spec : Prop :=
  ∀ n, P11244693853615113697.a n = A016886 n

end A016886

/-! ## A016886.P17041265166829871969

`sqrt(A016888(n))`
-/

namespace A016886.P17041265166829871969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016888 n : ℝ)

end

end A016886.P17041265166829871969

namespace A016886

/-- `sqrt(A016888(n))` -/
def P17041265166829871969.Spec : Prop :=
  ∀ n, P17041265166829871969.a n = (A016886 n : ℝ)

end A016886

/-! ## A016886.P11492144093007601125

`A017342(n)/4`
-/

namespace A016886.P11492144093007601125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017342 n : ℚ) / 4

end

end A016886.P11492144093007601125

namespace A016886

/-- `A017342(n)/4` -/
def P11492144093007601125.Spec : Prop :=
  ∀ n, P11492144093007601125.a n = (A016886 n : ℚ)

end A016886

/-! ## A016886.P12939117688189501522

`sqrt(sqrt(A016892(n)))`
-/

namespace A016886.P12939117688189501522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016892 n : ℝ))

end

end A016886.P12939117688189501522

namespace A016886

/-- `sqrt(sqrt(A016892(n)))` -/
def P12939117688189501522.Spec : Prop :=
  ∀ n, P12939117688189501522.a n = (A016886 n : ℝ)

end A016886

/-! ## A016886.P2374552882444409895

`A017341(n)²/4`
-/

namespace A016886.P2374552882444409895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017341 n ^ 2 : ℚ) / 4

end

end A016886.P2374552882444409895

namespace A016886

/-- `A017341(n)²/4` -/
def P2374552882444409895.Spec : Prop :=
  ∀ n, P2374552882444409895.a n = (A016886 n : ℚ)

end A016886

/-! ## A016886.P4090569067840167441

`sqrt(A017344(n))/4`
-/

namespace A016886.P4090569067840167441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017344 n : ℝ) / 4

end

end A016886.P4090569067840167441

namespace A016886

/-- `sqrt(A017344(n))/4` -/
def P4090569067840167441.Spec : Prop :=
  ∀ n, P4090569067840167441.a n = (A016886 n : ℝ)

end A016886

/-! ## A016886.P11800019773552295832

`A016890(n)^(1/3)`
-/

namespace A016886.P11800019773552295832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016890 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016886.P11800019773552295832

namespace A016886

/-- `A016890(n)^(1/3)` -/
def P11800019773552295832.Spec : Prop :=
  ∀ n, P11800019773552295832.a n = (A016886 n : ℝ)

end A016886

/-! ## A016886.P7485589587521977626

`A016887(n)^(2/3)`
-/

namespace A016886.P7485589587521977626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016887 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016886.P7485589587521977626

namespace A016886

/-- `A016887(n)^(2/3)` -/
def P7485589587521977626.Spec : Prop :=
  ∀ n, P7485589587521977626.a n = (A016886 n : ℝ)

end A016886

/-! ## A016886.P16175660557791168989

`(1-A016957(n)+n)^2`
-/

namespace A016886.P16175660557791168989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A016957 n + (n : ℤ)) ^ 2

end

end A016886.P16175660557791168989

namespace A016886

/-- `(1-A016957(n)+n)^2` -/
def P16175660557791168989.Spec : Prop :=
  ∀ n, P16175660557791168989.a n = A016886 n

end A016886

/-! ## A016886.P9427101324460324327

`(2-A016969(n)+n)^2`
-/

namespace A016886.P9427101324460324327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A016969 n + (n : ℤ)) ^ 2

end

end A016886.P9427101324460324327

namespace A016886

/-- `(2-A016969(n)+n)^2` -/
def P9427101324460324327.Spec : Prop :=
  ∀ n, P9427101324460324327.a n = A016886 n

end A016886

/-! ## A016886.P3031401353459860134

`A017329(n)+A016874(n)`
-/

namespace A016886.P3031401353459860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + A016874 n

end

end A016886.P3031401353459860134

namespace A016886

/-- `A017329(n)+A016874(n)` -/
def P3031401353459860134.Spec : Prop :=
  ∀ n, P3031401353459860134.a n = A016886 n

end A016886

/-! ## A016886.P6502285310569007751

`A177059(n)+A016885(n)`
-/

namespace A016886.P6502285310569007751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n + A016885 n

end

end A016886.P6502285310569007751

namespace A016886

/-- `A177059(n)+A016885(n)` -/
def P6502285310569007751.Spec : Prop :=
  ∀ n, P6502285310569007751.a n = A016886 n

end A016886

/-! ## A016886.P18202330188299532074

`A260955(n)+A028878(n)`
-/

namespace A016886.P18202330188299532074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n + A028878 n

end

end A016886.P18202330188299532074

namespace A016886

/-- `A260955(n)+A028878(n)` -/
def P18202330188299532074.Spec : Prop :=
  ∀ n, P18202330188299532074.a n = A016886 n

end A016886

/-! ## A016886.P14190362118315918484

`A259055(n)+A157870(n)`
-/

namespace A016886.P14190362118315918484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n + A157870 n

end

end A016886.P14190362118315918484

namespace A016886

/-- `A259055(n)+A157870(n)` -/
def P14190362118315918484.Spec : Prop :=
  ∀ n, P14190362118315918484.a n = A016886 n

end A016886

/-! ## A016886.P7986320210498640188

`A016898(n)-A017353(n)`
-/

namespace A016886.P7986320210498640188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n - A017353 n

end

end A016886.P7986320210498640188

namespace A016886

/-- `A016898(n)-A017353(n)` -/
def P7986320210498640188.Spec : Prop :=
  ∀ n, P7986320210498640188.a n = A016886 n

end A016886

/-!
# A016887: a(n) = (5*n+3)^3.

The programs for A016887, the canonical program `A016887.P17409783610642502630` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016887 has offset 0).

The definition of A016887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^3` (program `A016887.P17409783610642502630`, by `A016887.P17409783610642502630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016887.P17409783610642502630

`(5*n+3)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016887

/-- `(5*n+3)^3` -/
def P17409783610642502630.Spec : Prop :=
  ∀ n, (P17409783610642502630.a n : ℤ) = A016887 n

theorem P17409783610642502630.correct : P17409783610642502630.Spec := by
  intro n
  simp only [A016887]

end A016887

/-! ## A016887.P14026082323197361128

`A000578(A016885(n))`
-/

namespace A016887.P14026082323197361128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A016885 n).toNat

end

end A016887.P14026082323197361128

namespace A016887

/-- `A000578(A016885(n))` -/
def P14026082323197361128.Spec : Prop :=
  ∀ n, P14026082323197361128.a n = A016887 n

end A016887

/-! ## A016887.P14769608537494229344

`record[(gcd(5, n)+n-2)^3]`
-/

namespace A016887.P14769608537494229344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 2)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016887.P14769608537494229344

namespace A016887

/-- `record[(gcd(5, n)+n-2)^3]` -/
def P14769608537494229344.Spec : Prop :=
  ∀ n, P14769608537494229344.a n = A016887 n

end A016887

/-! ## A016887.P4187539395020242534

`record[(n+3)^(n+3-lcm(5, n))]`
-/

namespace A016887.P4187539395020242534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ ((n + 3 : ℤ) - (Nat.lcm 5 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016887.P4187539395020242534

namespace A016887

/-- `record[(n+3)^(n+3-lcm(5, n))]` -/
def P4187539395020242534.Spec : Prop :=
  ∀ n, P4187539395020242534.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P10208713581364748446

`sqrt(A016890(n))`
-/

namespace A016887.P10208713581364748446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016890 n : ℝ)

end

end A016887.P10208713581364748446

namespace A016887

/-- `sqrt(A016890(n))` -/
def P10208713581364748446.Spec : Prop :=
  ∀ n, P10208713581364748446.a n = (A016887 n : ℝ)

end A016887

/-! ## A016887.P16783551725578153090

`A017343(n)/8`
-/

namespace A016887.P16783551725578153090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017343 n : ℚ) / 8

end

end A016887.P16783551725578153090

namespace A016887

/-- `A017343(n)/8` -/
def P16783551725578153090.Spec : Prop :=
  ∀ n, P16783551725578153090.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P11335264868575040462

`sqrt(A016886(n)^3)`
-/

namespace A016887.P11335264868575040462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016886 n ^ 3 : ℝ)

end

end A016887.P11335264868575040462

namespace A016887

/-- `sqrt(A016886(n)^3)` -/
def P11335264868575040462.Spec : Prop :=
  ∀ n, P11335264868575040462.a n = (A016887 n : ℝ)

end A016887

/-! ## A016887.P465505388067822641

`((A016873(n)+1)^(9/6))²`
-/

namespace A016887.P465505388067822641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 1 : ℝ) ^ ((9 : ℚ) / 6 : ℝ)) ^ 2

end

end A016887.P465505388067822641

namespace A016887

/-- `((A016873(n)+1)^(9/6))²` -/
def P465505388067822641.Spec : Prop :=
  ∀ n, P465505388067822641.a n = (A016887 n : ℝ)

end A016887

/-! ## A016887.P8624795363709056428

`(A016897(n)-1)*(5*n+3)²`
-/

namespace A016887.P8624795363709056428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n - 1) * ((5 * n + 3) ^ 2 : ℤ)

end

end A016887.P8624795363709056428

namespace A016887

/-- `(A016897(n)-1)*(5*n+3)²` -/
def P8624795363709056428.Spec : Prop :=
  ∀ n, P8624795363709056428.a n = A016887 n

end A016887

/-! ## A016887.P11277060149848635346

`A016885(n)*A016886(n)`
-/

namespace A016887.P11277060149848635346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016886 n

end

end A016887.P11277060149848635346

namespace A016887

/-- `A016885(n)*A016886(n)` -/
def P11277060149848635346.Spec : Prop :=
  ∀ n, P11277060149848635346.a n = A016887 n

end A016887

/-! ## A016887.P7233647102159081936

`A016888(n)/A016885(n)`
-/

namespace A016887.P7233647102159081936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 n : ℚ) / (A016885 n : ℚ)

end

end A016887.P7233647102159081936

namespace A016887

/-- `A016888(n)/A016885(n)` -/
def P7233647102159081936.Spec : Prop :=
  ∀ n, P7233647102159081936.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P7876404985278792439

`A016889(n)/A016886(n)`
-/

namespace A016887.P7876404985278792439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n : ℚ) / (A016886 n : ℚ)

end

end A016887.P7876404985278792439

namespace A016887

/-- `A016889(n)/A016886(n)` -/
def P7876404985278792439.Spec : Prop :=
  ∀ n, P7876404985278792439.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P9934656398224647849

`A016891(n)/A016888(n)`
-/

namespace A016887.P9934656398224647849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 n : ℚ) / (A016888 n : ℚ)

end

end A016887.P9934656398224647849

namespace A016887

/-- `A016891(n)/A016888(n)` -/
def P9934656398224647849.Spec : Prop :=
  ∀ n, P9934656398224647849.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P1088008367438870964

`∪[A017307(n), A017367(n)]`
-/

namespace A016887.P1088008367438870964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016887.P1088008367438870964

namespace A016887

/-- `∪[A017307(n), A017367(n)]` -/
def P1088008367438870964.Spec : Prop :=
  ∀ n, (P1088008367438870964.a n : ℤ) = A016887 n

end A016887

/-! ## A016887.P611069765549997247

`A016888(n)²/A016889(n)`
-/

namespace A016887.P611069765549997247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 n ^ 2 : ℚ) / (A016889 n : ℚ)

end

end A016887.P611069765549997247

namespace A016887

/-- `A016888(n)²/A016889(n)` -/
def P611069765549997247.Spec : Prop :=
  ∀ n, P611069765549997247.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P2414034659435707984

`A016889(n)/A016885(n)²`
-/

namespace A016887.P2414034659435707984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n : ℚ) / (A016885 n ^ 2 : ℚ)

end

end A016887.P2414034659435707984

namespace A016887

/-- `A016889(n)/A016885(n)²` -/
def P2414034659435707984.Spec : Prop :=
  ∀ n, P2414034659435707984.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P12942300097509189928

`A016891(n)/A016886(n)²`
-/

namespace A016887.P12942300097509189928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 n : ℚ) / (A016886 n ^ 2 : ℚ)

end

end A016887.P12942300097509189928

namespace A016887

/-- `A016891(n)/A016886(n)²` -/
def P12942300097509189928.Spec : Prop :=
  ∀ n, P12942300097509189928.a n = (A016887 n : ℚ)

end A016887

/-! ## A016887.P1899550697184464354

`A305074(n+1)+A079610(n)`
-/

namespace A016887.P1899550697184464354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1) + A079610 n

end

end A016887.P1899550697184464354

namespace A016887

/-- `A305074(n+1)+A079610(n)` -/
def P1899550697184464354.Spec : Prop :=
  ∀ n, P1899550697184464354.a n = A016887 n

end A016887

/-! ## A016887.P15259146598261384879

`(A016861(n)+2)*A016886(n)`
-/

namespace A016887.P15259146598261384879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + 2) * A016886 n

end

end A016887.P15259146598261384879

namespace A016887

/-- `(A016861(n)+2)*A016886(n)` -/
def P15259146598261384879.Spec : Prop :=
  ∀ n, P15259146598261384879.a n = A016887 n

end A016887

/-!
# A016888: a(n) = (5n + 3)^4.

The programs for A016888, the canonical program `A016888.P4081375051396763708` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016888 has offset 0).

The definition of A016888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^4` (program `A016888.P4081375051396763708`, by `A016888.P4081375051396763708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016888.P4081375051396763708

`(5*n+3)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016888

/-- `(5*n+3)^4` -/
def P4081375051396763708.Spec : Prop :=
  ∀ n, (P4081375051396763708.a n : ℤ) = A016888 n

theorem P4081375051396763708.correct : P4081375051396763708.Spec := by
  intro n
  simp only [A016888]

end A016888

/-! ## A016888.P15737621990534999049

`(record[xor(3, n)]+n)²²`
-/

namespace A016888.P15737621990534999049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 2) ^ 2

end

end A016888.P15737621990534999049

namespace A016888

/-- `(record[xor(3, n)]+n)²²` -/
def P15737621990534999049.Spec : Prop :=
  ∀ n, (P15737621990534999049.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P4299952294987239088

`(lcm(5, 5*n)+3)²²`
-/

namespace A016888.P4299952294987239088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 5 (5 * n) + 3) ^ 2) ^ 2

end

end A016888.P4299952294987239088

namespace A016888

/-- `(lcm(5, 5*n)+3)²²` -/
def P4299952294987239088.Spec : Prop :=
  ∀ n, (P4299952294987239088.a n : ℤ) = A016888 n

theorem P4299952294987239088.correct : P4299952294987239088.Spec := by
  intro n
  simp only [A016888, Nat.add_sub_cancel, A016888.P4299952294987239088.a, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016888

/-! ## A016888.P4508129274588709390

`(or(3, 4*n)+n)²²`
-/

namespace A016888.P4508129274588709390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (4 * n) + n) ^ 2) ^ 2

end

end A016888.P4508129274588709390

namespace A016888

/-- `(or(3, 4*n)+n)²²` -/
def P4508129274588709390.Spec : Prop :=
  ∀ n, (P4508129274588709390.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P4147399163751649291

`(xor(3, 4*n)+n)²²`
-/

namespace A016888.P4147399163751649291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (4 * n) + n) ^ 2) ^ 2

end

end A016888.P4147399163751649291

namespace A016888

/-- `(xor(3, 4*n)+n)²²` -/
def P4147399163751649291.Spec : Prop :=
  ∀ n, (P4147399163751649291.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P11311432679029659398

`record[(n+3)^(gcd(5, n)-1)]`
-/

namespace A016888.P11311432679029659398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016888.P11311432679029659398

namespace A016888

/-- `record[(n+3)^(gcd(5, n)-1)]` -/
def P11311432679029659398.Spec : Prop :=
  ∀ n, P11311432679029659398.a n = (A016888 n : ℚ)

end A016888

/-! ## A016888.P15058402518166103672

`record[a(n-2)+5]²²` with `a(0)=3, a(1)=0`
-/

namespace A016888.P15058402518166103672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016888.P15058402518166103672

namespace A016888

/-- `record[a(n-2)+5]²²` -/
def P15058402518166103672.Spec : Prop :=
  ∀ n, (P15058402518166103672.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P3400762427546646946

`(record[lcm(2, n+1)]+n+1)²²`
-/

namespace A016888.P3400762427546646946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1)) ^ 2) ^ 2

end

end A016888.P3400762427546646946

namespace A016888

/-- `(record[lcm(2, n+1)]+n+1)²²` -/
def P3400762427546646946.Spec : Prop :=
  ∀ n, (P3400762427546646946.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P10480671114085469089

`(Δ[C(2*n+1, 2)]+n)²²`
-/

namespace A016888.P10480671114085469089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A016888.P10480671114085469089

namespace A016888

/-- `(Δ[C(2*n+1, 2)]+n)²²` -/
def P10480671114085469089.Spec : Prop :=
  ∀ n, P10480671114085469089.a n = A016888 n

end A016888

/-! ## A016888.P12027729281791149461

`(eq[n, and(n, n+3)]+n+3)²²`
-/

namespace A016888.P12027729281791149461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 3)) ^ 2) ^ 2

end

end A016888.P12027729281791149461

namespace A016888

/-- `(eq[n, and(n, n+3)]+n+3)²²` -/
def P12027729281791149461.Spec : Prop :=
  ∀ n, (P12027729281791149461.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P1072088809614472238

`(C(n+1, n)+2*(2*n+1))²²`
-/

namespace A016888.P1072088809614472238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + 2 * (2 * n + 1)) ^ 2) ^ 2

end

end A016888.P1072088809614472238

namespace A016888

/-- `(C(n+1, n)+2*(2*n+1))²²` -/
def P1072088809614472238.Spec : Prop :=
  ∀ n, (P1072088809614472238.a n : ℤ) = A016888 n

theorem P1072088809614472238.correct : P1072088809614472238.Spec := by
  intro n
  simp only [A016888, Nat.add_sub_cancel, A016888.P1072088809614472238.a, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016888

/-! ## A016888.P10188739268092726485

`(2*n*gcd(2, 2*n)+n+3)²²`
-/

namespace A016888.P10188739268092726485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n * Nat.gcd 2 (2 * n) + (n + 3)) ^ 2) ^ 2

end

end A016888.P10188739268092726485

namespace A016888

/-- `(2*n*gcd(2, 2*n)+n+3)²²` -/
def P10188739268092726485.Spec : Prop :=
  ∀ n, (P10188739268092726485.a n : ℤ) = A016888 n

theorem P10188739268092726485.correct : P10188739268092726485.Spec := by
  intro n
  simp only [A016888, Nat.add_sub_cancel, A016888.P10188739268092726485.a, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016888

/-! ## A016888.P11773480258317476420

`(2*and(2*n+1, 2*n)+n+3)²²`
-/

namespace A016888.P11773480258317476420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land (2 * n + 1) (2 * n) + (n + 3)) ^ 2) ^ 2

end

end A016888.P11773480258317476420

namespace A016888

/-- `(2*and(2*n+1, 2*n)+n+3)²²` -/
def P11773480258317476420.Spec : Prop :=
  ∀ n, (P11773480258317476420.a n : ℤ) = A016888 n

end A016888

/-! ## A016888.P14638380614490880616

`A016886(n)²`
-/

namespace A016888.P14638380614490880616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n ^ 2

end

end A016888.P14638380614490880616

namespace A016888

/-- `A016886(n)²` -/
def P14638380614490880616.Spec : Prop :=
  ∀ n, P14638380614490880616.a n = A016888 n

end A016888

/-! ## A016888.P3100479947772959192

`sqrt(A016892(n))`
-/

namespace A016888.P3100479947772959192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016892 n : ℝ)

end

end A016888.P3100479947772959192

namespace A016888

/-- `sqrt(A016892(n))` -/
def P3100479947772959192.Spec : Prop :=
  ∀ n, P3100479947772959192.a n = (A016888 n : ℝ)

end A016888

/-! ## A016888.P1532569232085958654

`A016885(n)²²`
-/

namespace A016888.P1532569232085958654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n ^ 2) ^ 2

end

end A016888.P1532569232085958654

namespace A016888

/-- `A016885(n)²²` -/
def P1532569232085958654.Spec : Prop :=
  ∀ n, P1532569232085958654.a n = A016888 n

end A016888

/-! ## A016888.P7086301310918195239

`(A017342(n)/4)²`
-/

namespace A016888.P7086301310918195239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017342 n : ℚ) / 4) ^ 2

end

end A016888.P7086301310918195239

namespace A016888

/-- `(A017342(n)/4)²` -/
def P7086301310918195239.Spec : Prop :=
  ∀ n, P7086301310918195239.a n = (A016888 n : ℚ)

end A016888

/-! ## A016888.P14488482003583553538

`(A016873(n)+1)²²`
-/

namespace A016888.P14488482003583553538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 1) ^ 2) ^ 2

end

end A016888.P14488482003583553538

namespace A016888

/-- `(A016873(n)+1)²²` -/
def P14488482003583553538.Spec : Prop :=
  ∀ n, P14488482003583553538.a n = A016888 n

end A016888

/-! ## A016888.P426672783615436213

`(A016861(n)+2)²²`
-/

namespace A016888.P426672783615436213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016861 n + 2) ^ 2) ^ 2

end

end A016888.P426672783615436213

namespace A016888

/-- `(A016861(n)+2)²²` -/
def P426672783615436213.Spec : Prop :=
  ∀ n, P426672783615436213.a n = A016888 n

end A016888

/-! ## A016888.P10016893296607591269

`(1-A016897(n))²²`
-/

namespace A016888.P10016893296607591269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A016897 n) ^ 2) ^ 2

end

end A016888.P10016893296607591269

namespace A016888

/-- `(1-A016897(n))²²` -/
def P10016893296607591269.Spec : Prop :=
  ∀ n, P10016893296607591269.a n = A016888 n

end A016888

/-!
# A016889: a(n) = (5n+3)^5.

The programs for A016889, the canonical program `A016889.P1857063498717398882` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016889 has offset 0).

The definition of A016889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^5` (program `A016889.P1857063498717398882`, by `A016889.P1857063498717398882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016889.P1857063498717398882

`(5*n+3)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016889

/-- `(5*n+3)^5` -/
def P1857063498717398882.Spec : Prop :=
  ∀ n, (P1857063498717398882.a n : ℤ) = A016889 n

theorem P1857063498717398882.correct : P1857063498717398882.Spec := by
  intro n
  simp only [A016889]

end A016889

/-! ## A016889.P16578180298592539028

`record[(n+3)^gcd(5, n)]`
-/

namespace A016889.P16578180298592539028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016889.P16578180298592539028

namespace A016889

/-- `record[(n+3)^gcd(5, n)]` -/
def P16578180298592539028.Spec : Prop :=
  ∀ n, (P16578180298592539028.a n : ℤ) = A016889 n

end A016889

/-! ## A016889.P13616295288543724555

`sqrt(A016894(n))`
-/

namespace A016889.P13616295288543724555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016894 n : ℝ)

end

end A016889.P13616295288543724555

namespace A016889

/-- `sqrt(A016894(n))` -/
def P13616295288543724555.Spec : Prop :=
  ∀ n, P13616295288543724555.a n = (A016889 n : ℝ)

end A016889

/-! ## A016889.P11901904463531091501

`sqrt(A016886(n)^5)`
-/

namespace A016889.P11901904463531091501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016886 n ^ 5 : ℝ)

end

end A016889.P11901904463531091501

namespace A016889

/-- `sqrt(A016886(n)^5)` -/
def P11901904463531091501.Spec : Prop :=
  ∀ n, P11901904463531091501.a n = (A016889 n : ℝ)

end A016889

/-! ## A016889.P4294983001411142508

`abs((A016945(n)-n)^5)`
-/

namespace A016889.P4294983001411142508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016945 n - (n : ℤ)) ^ 5|

end

end A016889.P4294983001411142508

namespace A016889

/-- `abs((A016945(n)-n)^5)` -/
def P4294983001411142508.Spec : Prop :=
  ∀ n, P4294983001411142508.a n = A016889 n

end A016889

/-! ## A016889.P8171146742394439672

`abs((1-A016957(n)+n)^5)`
-/

namespace A016889.P8171146742394439672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A016957 n + (n : ℤ)) ^ 5|

end

end A016889.P8171146742394439672

namespace A016889

/-- `abs((1-A016957(n)+n)^5)` -/
def P8171146742394439672.Spec : Prop :=
  ∀ n, P8171146742394439672.a n = A016889 n

end A016889

/-! ## A016889.P5326647384733424316

`A016885(n)*A016888(n)`
-/

namespace A016889.P5326647384733424316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016888 n

end

end A016889.P5326647384733424316

namespace A016889

/-- `A016885(n)*A016888(n)` -/
def P5326647384733424316.Spec : Prop :=
  ∀ n, P5326647384733424316.a n = A016889 n

end A016889

/-! ## A016889.P10453779942836606121

`A016886(n)*A016887(n)`
-/

namespace A016889.P10453779942836606121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016887 n

end

end A016889.P10453779942836606121

namespace A016889

/-- `A016886(n)*A016887(n)` -/
def P10453779942836606121.Spec : Prop :=
  ∀ n, P10453779942836606121.a n = A016889 n

end A016889

/-! ## A016889.P7988204031698106961

`A016890(n)/A016885(n)`
-/

namespace A016889.P7988204031698106961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016890 n : ℚ) / (A016885 n : ℚ)

end

end A016889.P7988204031698106961

namespace A016889

/-- `A016890(n)/A016885(n)` -/
def P7988204031698106961.Spec : Prop :=
  ∀ n, P7988204031698106961.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P2647791958994955103

`A016891(n)/A016886(n)`
-/

namespace A016889.P2647791958994955103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 n : ℚ) / (A016886 n : ℚ)

end

end A016889.P2647791958994955103

namespace A016889

/-- `A016891(n)/A016886(n)` -/
def P2647791958994955103.Spec : Prop :=
  ∀ n, P2647791958994955103.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P643551709766228186

`∪[A017309(n), A017369(n)]`
-/

namespace A016889.P643551709766228186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017369 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016889.P643551709766228186

namespace A016889

/-- `∪[A017309(n), A017369(n)]` -/
def P643551709766228186.Spec : Prop :=
  ∀ n, (P643551709766228186.a n : ℤ) = A016889 n

end A016889

/-! ## A016889.P11789022225851937074

`A016885(n)²*A016887(n)`
-/

namespace A016889.P11789022225851937074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016887 n

end

end A016889.P11789022225851937074

namespace A016889

/-- `A016885(n)²*A016887(n)` -/
def P11789022225851937074.Spec : Prop :=
  ∀ n, P11789022225851937074.a n = A016889 n

end A016889

/-! ## A016889.P13603885474379742016

`A016886(n)²*A016885(n)`
-/

namespace A016889.P13603885474379742016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n ^ 2 * A016885 n

end

end A016889.P13603885474379742016

namespace A016889

/-- `A016886(n)²*A016885(n)` -/
def P13603885474379742016.Spec : Prop :=
  ∀ n, P13603885474379742016.a n = A016889 n

end A016889

/-! ## A016889.P6423296015111659856

`A016888(n)²/A016887(n)`
-/

namespace A016889.P6423296015111659856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 n ^ 2 : ℚ) / (A016887 n : ℚ)

end

end A016889.P6423296015111659856

namespace A016889

/-- `A016888(n)²/A016887(n)` -/
def P6423296015111659856.Spec : Prop :=
  ∀ n, P6423296015111659856.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P11027433329628009134

`A016891(n)/A016885(n)²`
-/

namespace A016889.P11027433329628009134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 n : ℚ) / (A016885 n ^ 2 : ℚ)

end

end A016889.P11027433329628009134

namespace A016889

/-- `A016891(n)/A016885(n)²` -/
def P11027433329628009134.Spec : Prop :=
  ∀ n, P11027433329628009134.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P7755317057915980961

`(A016861(n)+2)*A016886(n)²`
-/

namespace A016889.P7755317057915980961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + 2) * A016886 n ^ 2

end

end A016889.P7755317057915980961

namespace A016889

/-- `(A016861(n)+2)*A016886(n)²` -/
def P7755317057915980961.Spec : Prop :=
  ∀ n, P7755317057915980961.a n = A016889 n

end A016889

/-! ## A016889.P10407999079409461453

`2*A016887(n)²/A017341(n)`
-/

namespace A016889.P10407999079409461453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016887 n ^ 2 : ℚ) / (A017341 n : ℚ))

end

end A016889.P10407999079409461453

namespace A016889

/-- `2*A016887(n)²/A017341(n)` -/
def P10407999079409461453.Spec : Prop :=
  ∀ n, P10407999079409461453.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P7808029271687102128

`A016886(n)²/2*A017341(n)`
-/

namespace A016889.P7808029271687102128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016886 n ^ 2 : ℚ) / 2 * (A017341 n : ℚ)

end

end A016889.P7808029271687102128

namespace A016889

/-- `A016886(n)²/2*A017341(n)` -/
def P7808029271687102128.Spec : Prop :=
  ∀ n, P7808029271687102128.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P10955731452871789393

`(2*A016887(n))²/A305074(n+1)`
-/

namespace A016889.P10955731452871789393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016887 n) ^ 2 : ℚ) / (A305074 (n + 1) : ℚ)

end

end A016889.P10955731452871789393

namespace A016889

/-- `(2*A016887(n))²/A305074(n+1)` -/
def P10955731452871789393.Spec : Prop :=
  ∀ n, P10955731452871789393.a n = (A016889 n : ℚ)

end A016889

/-! ## A016889.P18202347177684126747

`A016888(n)*A016897(n)-A016888(n)`
-/

namespace A016889.P18202347177684126747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n * A016897 n - A016888 n

end

end A016889.P18202347177684126747

namespace A016889

/-- `A016888(n)*A016897(n)-A016888(n)` -/
def P18202347177684126747.Spec : Prop :=
  ∀ n, P18202347177684126747.a n = A016889 n

end A016889

/-!
# A016890: a(n) = (5n+3)^6.

The programs for A016890, the canonical program `A016890.P2080566048522477546` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016890 has offset 0).

The definition of A016890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^6` (program `A016890.P2080566048522477546`, by `A016890.P2080566048522477546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016890.P2080566048522477546

`(5*n+3)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016890

/-- `(5*n+3)^6` -/
def P2080566048522477546.Spec : Prop :=
  ∀ n, (P2080566048522477546.a n : ℤ) = A016890 n

theorem P2080566048522477546.correct : P2080566048522477546.Spec := by
  intro n
  simp only [A016890]

end A016890

/-! ## A016890.P8544849931941350432

`((record[xor(3, n)]+n)^3)²`
-/

namespace A016890.P8544849931941350432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 3) ^ 2

end

end A016890.P8544849931941350432

namespace A016890

/-- `((record[xor(3, n)]+n)^3)²` -/
def P8544849931941350432.Spec : Prop :=
  ∀ n, (P8544849931941350432.a n : ℤ) = A016890 n

end A016890

/-! ## A016890.P13167258052095837093

`record[(n+3)^(gcd(5, n)+1)]`
-/

namespace A016890.P13167258052095837093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (Nat.gcd 5 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016890.P13167258052095837093

namespace A016890

/-- `record[(n+3)^(gcd(5, n)+1)]` -/
def P13167258052095837093.Spec : Prop :=
  ∀ n, (P13167258052095837093.a n : ℤ) = A016890 n

end A016890

/-! ## A016890.P2952247844817004503

`root(5*n+3, cot(atan(3)))²`
-/

namespace A016890.P2952247844817004503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 * n + 3 : ℝ) ^ (1 / Real.cot (Real.arctan (3 : ℝ)))) ^ 2

end

end A016890.P2952247844817004503

namespace A016890

/-- `root(5*n+3, cot(atan(3)))²` -/
def P2952247844817004503.Spec : Prop :=
  ∀ n, P2952247844817004503.a n = (A016890 n : ℝ)

theorem P2952247844817004503.correct : P2952247844817004503.Spec := by
  intro n
  simp only [A016890, Nat.add_sub_cancel, A016890.P2952247844817004503.a, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016890

/-! ## A016890.P17727295594170281722

`(eq[n+2, lcm(5, n+2)]^3)²`
-/

namespace A016890.P17727295594170281722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016890.P17727295594170281722

namespace A016890

/-- `(eq[n+2, lcm(5, n+2)]^3)²` -/
def P17727295594170281722.Spec : Prop :=
  ∀ n, (P17727295594170281722.a n : ℤ) = A016890 n

end A016890

/-! ## A016890.P2520066155527607099

`A016887(n)²`
-/

namespace A016890.P2520066155527607099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n ^ 2

end

end A016890.P2520066155527607099

namespace A016890

/-- `A016887(n)²` -/
def P2520066155527607099.Spec : Prop :=
  ∀ n, P2520066155527607099.a n = A016890 n

end A016890

/-! ## A016890.P6707003985500627866

`(A016885(n)^3)²`
-/

namespace A016890.P6707003985500627866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n ^ 3) ^ 2

end

end A016890.P6707003985500627866

namespace A016890

/-- `(A016885(n)^3)²` -/
def P6707003985500627866.Spec : Prop :=
  ∀ n, P6707003985500627866.a n = A016890 n

end A016890

/-! ## A016890.P17274340611048368322

`((A016873(n)+1)^3)²`
-/

namespace A016890.P17274340611048368322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 1) ^ 3) ^ 2

end

end A016890.P17274340611048368322

namespace A016890

/-- `((A016873(n)+1)^3)²` -/
def P17274340611048368322.Spec : Prop :=
  ∀ n, P17274340611048368322.a n = A016890 n

end A016890

/-! ## A016890.P5543152661830853121

`A016885(n)*A016889(n)`
-/

namespace A016890.P5543152661830853121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016889 n

end

end A016890.P5543152661830853121

namespace A016890

/-- `A016885(n)*A016889(n)` -/
def P5543152661830853121.Spec : Prop :=
  ∀ n, P5543152661830853121.a n = A016890 n

end A016890

/-! ## A016890.P4487128293823214420

`A016886(n)*A016888(n)`
-/

namespace A016890.P4487128293823214420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016888 n

end

end A016890.P4487128293823214420

namespace A016890

/-- `A016886(n)*A016888(n)` -/
def P4487128293823214420.Spec : Prop :=
  ∀ n, P4487128293823214420.a n = A016890 n

end A016890

/-! ## A016890.P7465818749257906757

`A016891(n)/A016885(n)`
-/

namespace A016890.P7465818749257906757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 n : ℚ) / (A016885 n : ℚ)

end

end A016890.P7465818749257906757

namespace A016890

/-- `A016891(n)/A016885(n)` -/
def P7465818749257906757.Spec : Prop :=
  ∀ n, P7465818749257906757.a n = (A016890 n : ℚ)

end A016890

/-! ## A016890.P11775617923427561855

`∪[A017310(n), A017370(n)]`
-/

namespace A016890.P11775617923427561855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016890.P11775617923427561855

namespace A016890

/-- `∪[A017310(n), A017370(n)]` -/
def P11775617923427561855.Spec : Prop :=
  ∀ n, (P11775617923427561855.a n : ℤ) = A016890 n

end A016890

/-! ## A016890.P14284937877426220483

`(A016885(n)*A016886(n))²`
-/

namespace A016890.P14284937877426220483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n * A016886 n) ^ 2

end

end A016890.P14284937877426220483

namespace A016890

/-- `(A016885(n)*A016886(n))²` -/
def P14284937877426220483.Spec : Prop :=
  ∀ n, P14284937877426220483.a n = A016890 n

end A016890

/-! ## A016890.P9606358621670694144

`A016885(n)²*A016888(n)`
-/

namespace A016890.P9606358621670694144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016888 n

end

end A016890.P9606358621670694144

namespace A016890

/-- `A016885(n)²*A016888(n)` -/
def P9606358621670694144.Spec : Prop :=
  ∀ n, P9606358621670694144.a n = A016890 n

end A016890

/-! ## A016890.P2474553405140153674

`(A016889(n)/A016886(n))²`
-/

namespace A016890.P2474553405140153674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016889 n : ℚ) / (A016886 n : ℚ)) ^ 2

end

end A016890.P2474553405140153674

namespace A016890

/-- `(A016889(n)/A016886(n))²` -/
def P2474553405140153674.Spec : Prop :=
  ∀ n, P2474553405140153674.a n = (A016890 n : ℚ)

end A016890

/-! ## A016890.P17798839497174229584

`A016889(n)²/A016888(n)`
-/

namespace A016890.P17798839497174229584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n ^ 2 : ℚ) / (A016888 n : ℚ)

end

end A016890.P17798839497174229584

namespace A016890

/-- `A016889(n)²/A016888(n)` -/
def P17798839497174229584.Spec : Prop :=
  ∀ n, P17798839497174229584.a n = (A016890 n : ℚ)

end A016890

/-! ## A016890.P1413057290547579456

`(A016891(n)/A016888(n))²`
-/

namespace A016890.P1413057290547579456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016891 n : ℚ) / (A016888 n : ℚ)) ^ 2

end

end A016890.P1413057290547579456

namespace A016890

/-- `(A016891(n)/A016888(n))²` -/
def P1413057290547579456.Spec : Prop :=
  ∀ n, P1413057290547579456.a n = (A016890 n : ℚ)

end A016890

/-! ## A016890.P16497565065685250640

`A016892(n)/A016885(n)²`
-/

namespace A016890.P16497565065685250640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016892 n : ℚ) / (A016885 n ^ 2 : ℚ)

end

end A016890.P16497565065685250640

namespace A016890

/-- `A016892(n)/A016885(n)²` -/
def P16497565065685250640.Spec : Prop :=
  ∀ n, P16497565065685250640.a n = (A016890 n : ℚ)

end A016890

/-! ## A016890.P4616751637967479104

`∪[A017307(n), A017367(n)]²`
-/

namespace A016890.P4616751637967479104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016890.P4616751637967479104

namespace A016890

/-- `∪[A017307(n), A017367(n)]²` -/
def P4616751637967479104.Spec : Prop :=
  ∀ n, (P4616751637967479104.a n : ℤ) = A016890 n

end A016890

/-! ## A016890.P6220191924663822335

`A016889(n)/2*A017341(n)`
-/

namespace A016890.P6220191924663822335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n : ℚ) / 2 * (A017341 n : ℚ)

end

end A016890.P6220191924663822335

namespace A016890

/-- `A016889(n)/2*A017341(n)` -/
def P6220191924663822335.Spec : Prop :=
  ∀ n, P6220191924663822335.a n = (A016890 n : ℚ)

end A016890

/-!
# A016891: a(n) = (5*n+3)^7.

The programs for A016891, the canonical program `A016891.P1643224120457508040` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016891 has offset 0).

The definition of A016891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^7` (program `A016891.P1643224120457508040`, by `A016891.P1643224120457508040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016891.P1643224120457508040

`(5*n+3)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016891

/-- `(5*n+3)^7` -/
def P1643224120457508040.Spec : Prop :=
  ∀ n, (P1643224120457508040.a n : ℤ) = A016891 n

theorem P1643224120457508040.correct : P1643224120457508040.Spec := by
  intro n
  simp only [A016891]

end A016891

/-! ## A016891.P391185719407272805

`record[(n+3)^(gcd(5, n)+2)]`
-/

namespace A016891.P391185719407272805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (Nat.gcd 5 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016891.P391185719407272805

namespace A016891

/-- `record[(n+3)^(gcd(5, n)+2)]` -/
def P391185719407272805.Spec : Prop :=
  ∀ n, (P391185719407272805.a n : ℤ) = A016891 n

end A016891

/-! ## A016891.P10921082958660509638

`A016885(n)*A016890(n)`
-/

namespace A016891.P10921082958660509638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016890 n

end

end A016891.P10921082958660509638

namespace A016891

/-- `A016885(n)*A016890(n)` -/
def P10921082958660509638.Spec : Prop :=
  ∀ n, P10921082958660509638.a n = A016891 n

end A016891

/-! ## A016891.P11848717007108292031

`A016886(n)*A016889(n)`
-/

namespace A016891.P11848717007108292031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016889 n

end

end A016891.P11848717007108292031

namespace A016891

/-- `A016886(n)*A016889(n)` -/
def P11848717007108292031.Spec : Prop :=
  ∀ n, P11848717007108292031.a n = A016891 n

end A016891

/-! ## A016891.P9822822471073993602

`A016887(n)*A016888(n)`
-/

namespace A016891.P9822822471073993602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n * A016888 n

end

end A016891.P9822822471073993602

namespace A016891

/-- `A016887(n)*A016888(n)` -/
def P9822822471073993602.Spec : Prop :=
  ∀ n, P9822822471073993602.a n = A016891 n

end A016891

/-! ## A016891.P5327598364463104186

`A016892(n)/A016885(n)`
-/

namespace A016891.P5327598364463104186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016892 n : ℚ) / (A016885 n : ℚ)

end

end A016891.P5327598364463104186

namespace A016891

/-- `A016892(n)/A016885(n)` -/
def P5327598364463104186.Spec : Prop :=
  ∀ n, P5327598364463104186.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P7395107572018854839

`A016885(n)²*A016889(n)`
-/

namespace A016891.P7395107572018854839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016889 n

end

end A016891.P7395107572018854839

namespace A016891

/-- `A016885(n)²*A016889(n)` -/
def P7395107572018854839.Spec : Prop :=
  ∀ n, P7395107572018854839.a n = A016891 n

end A016891

/-! ## A016891.P5700713372277410715

`A016886(n)²*A016887(n)`
-/

namespace A016891.P5700713372277410715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n ^ 2 * A016887 n

end

end A016891.P5700713372277410715

namespace A016891

/-- `A016886(n)²*A016887(n)` -/
def P5700713372277410715.Spec : Prop :=
  ∀ n, P5700713372277410715.a n = A016891 n

end A016891

/-! ## A016891.P14110338678141416654

`A016887(n)²*A016885(n)`
-/

namespace A016891.P14110338678141416654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n ^ 2 * A016885 n

end

end A016891.P14110338678141416654

namespace A016891

/-- `A016887(n)²*A016885(n)` -/
def P14110338678141416654.Spec : Prop :=
  ∀ n, P14110338678141416654.a n = A016891 n

end A016891

/-! ## A016891.P8278873438925352802

`A016888(n)²/A016885(n)`
-/

namespace A016891.P8278873438925352802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 n ^ 2 : ℚ) / (A016885 n : ℚ)

end

end A016891.P8278873438925352802

namespace A016891

/-- `A016888(n)²/A016885(n)` -/
def P8278873438925352802.Spec : Prop :=
  ∀ n, P8278873438925352802.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P1019979621540921909

`A016889(n)²/A016887(n)`
-/

namespace A016891.P1019979621540921909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n ^ 2 : ℚ) / (A016887 n : ℚ)

end

end A016891.P1019979621540921909

namespace A016891

/-- `A016889(n)²/A016887(n)` -/
def P1019979621540921909.Spec : Prop :=
  ∀ n, P1019979621540921909.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P4802558969588330748

`A016886(n)²²/A016885(n)`
-/

namespace A016891.P4802558969588330748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016886 n ^ 2) ^ 2 : ℚ) / (A016885 n : ℚ)

end

end A016891.P4802558969588330748

namespace A016891

/-- `A016886(n)²²/A016885(n)` -/
def P4802558969588330748.Spec : Prop :=
  ∀ n, P4802558969588330748.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P5090570808543601909

`A016887(n)²/2*A017341(n)`
-/

namespace A016891.P5090570808543601909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016887 n ^ 2 : ℚ) / 2 * (A017341 n : ℚ)

end

end A016891.P5090570808543601909

namespace A016891

/-- `A016887(n)²/2*A017341(n)` -/
def P5090570808543601909.Spec : Prop :=
  ∀ n, P5090570808543601909.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P12708925830925209386

`(A017341(n)/2)²*A016889(n)`
-/

namespace A016891.P12708925830925209386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017341 n : ℚ) / 2) ^ 2 * (A016889 n : ℚ)

end

end A016891.P12708925830925209386

namespace A016891

/-- `(A017341(n)/2)²*A016889(n)` -/
def P12708925830925209386.Spec : Prop :=
  ∀ n, P12708925830925209386.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P12228792517251789432

`(A016887(n)/2)²*A305074(n+1)`
-/

namespace A016891.P12228792517251789432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016887 n : ℚ) / 2) ^ 2 * (A305074 (n + 1) : ℚ)

end

end A016891.P12228792517251789432

namespace A016891

/-- `(A016887(n)/2)²*A305074(n+1)` -/
def P12228792517251789432.Spec : Prop :=
  ∀ n, P12228792517251789432.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P13557419856662778947

`A016888(n)/A016889(n)*A016888(n)²`
-/

namespace A016891.P13557419856662778947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 n : ℚ) / (A016889 n : ℚ) * (A016888 n ^ 2 : ℚ)

end

end A016891.P13557419856662778947

namespace A016891

/-- `A016888(n)/A016889(n)*A016888(n)²` -/
def P13557419856662778947.Spec : Prop :=
  ∀ n, P13557419856662778947.a n = (A016891 n : ℚ)

end A016891

/-! ## A016891.P10183753895588883532

`abs(Δ[A005475(n)]^7)`
-/

namespace A016891.P10183753895588883532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ 7|

end

end A016891.P10183753895588883532

namespace A016891

/-- `abs(Δ[A005475(n)]^7)` -/
def P10183753895588883532.Spec : Prop :=
  ∀ n, P10183753895588883532.a n = A016891 n

end A016891

/-! ## A016891.P11379366500053387883

`record[∑[3-and(1, n)]^7^∑[(-1)^n]]`
-/

namespace A016891.P11379366500053387883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℝ) ^ ((7 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016891.P11379366500053387883

namespace A016891

/-- `record[∑[3-and(1, n)]^7^∑[(-1)^n]]` -/
def P11379366500053387883.Spec : Prop :=
  ∀ n, P11379366500053387883.a n = (A016891 n : ℝ)

end A016891

/-! ## A016891.P9002719105674368136

`A001015(5*n+3)`
-/

namespace A016891.P9002719105674368136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (5 * n + 3)

end

end A016891.P9002719105674368136

namespace A016891

/-- `A001015(5*n+3)` -/
def P9002719105674368136.Spec : Prop :=
  ∀ n, P9002719105674368136.a n = A016891 n

end A016891

/-! ## A016891.P7317252019922713750

`(5*n+3)*A001014(5*n+3)`
-/

namespace A016891.P7317252019922713750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) * A001014 (5 * n + 3)

end

end A016891.P7317252019922713750

namespace A016891

/-- `(5*n+3)*A001014(5*n+3)` -/
def P7317252019922713750.Spec : Prop :=
  ∀ n, P7317252019922713750.a n = A016891 n

end A016891

/-!
# A016892: a(n) = (5n+3)^8.

The programs for A016892, the canonical program `A016892.P4747035820161575619` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016892 has offset 0).

The definition of A016892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^8` (program `A016892.P4747035820161575619`, by `A016892.P4747035820161575619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016892.P4747035820161575619

`(5*n+3)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016892

/-- `(5*n+3)^8` -/
def P4747035820161575619.Spec : Prop :=
  ∀ n, (P4747035820161575619.a n : ℤ) = A016892 n

theorem P4747035820161575619.correct : P4747035820161575619.Spec := by
  intro n
  simp only [A016892]

end A016892

/-! ## A016892.P9067438381083238939

`record[(n+3)^(gcd(5, n)+3)]`
-/

namespace A016892.P9067438381083238939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (Nat.gcd 5 n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016892.P9067438381083238939

namespace A016892

/-- `record[(n+3)^(gcd(5, n)+3)]` -/
def P9067438381083238939.Spec : Prop :=
  ∀ n, (P9067438381083238939.a n : ℤ) = A016892 n

end A016892

/-! ## A016892.P7708874757102374325

`(eq[n+2, lcm(5, n+2)]^4)²`
-/

namespace A016892.P7708874757102374325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4) ^ 2

end

end A016892.P7708874757102374325

namespace A016892

/-- `(eq[n+2, lcm(5, n+2)]^4)²` -/
def P7708874757102374325.Spec : Prop :=
  ∀ n, (P7708874757102374325.a n : ℤ) = A016892 n

end A016892

/-! ## A016892.P16054473544995262320

`(Δ[C(2*n+1, 2)]+n)²²²`
-/

namespace A016892.P16054473544995262320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016892.P16054473544995262320

namespace A016892

/-- `(Δ[C(2*n+1, 2)]+n)²²²` -/
def P16054473544995262320.Spec : Prop :=
  ∀ n, P16054473544995262320.a n = A016892 n

end A016892

/-! ## A016892.P11883800239164551215

`(Δ[lcm(n, 2*n+1)]+n)²²²`
-/

namespace A016892.P11883800239164551215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016892.P11883800239164551215

namespace A016892

/-- `(Δ[lcm(n, 2*n+1)]+n)²²²` -/
def P11883800239164551215.Spec : Prop :=
  ∀ n, P11883800239164551215.a n = A016892 n

end A016892

/-! ## A016892.P8597346589314648365

`A016888(n)²`
-/

namespace A016892.P8597346589314648365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n ^ 2

end

end A016892.P8597346589314648365

namespace A016892

/-- `A016888(n)²` -/
def P8597346589314648365.Spec : Prop :=
  ∀ n, P8597346589314648365.a n = A016892 n

end A016892

/-! ## A016892.P15002354740833210533

`A016886(n)²²`
-/

namespace A016892.P15002354740833210533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 n ^ 2) ^ 2

end

end A016892.P15002354740833210533

namespace A016892

/-- `A016886(n)²²` -/
def P15002354740833210533.Spec : Prop :=
  ∀ n, P15002354740833210533.a n = A016892 n

end A016892

/-! ## A016892.P1309323441676705513

`A016885(n)²²²`
-/

namespace A016892.P1309323441676705513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n ^ 2) ^ 2) ^ 2

end

end A016892.P1309323441676705513

namespace A016892

/-- `A016885(n)²²²` -/
def P1309323441676705513.Spec : Prop :=
  ∀ n, P1309323441676705513.a n = A016892 n

end A016892

/-! ## A016892.P3002281369689563366

`(A016873(n)+1)²²²`
-/

namespace A016892.P3002281369689563366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016873 n + 1) ^ 2) ^ 2) ^ 2

end

end A016892.P3002281369689563366

namespace A016892

/-- `(A016873(n)+1)²²²` -/
def P3002281369689563366.Spec : Prop :=
  ∀ n, P3002281369689563366.a n = A016892 n

end A016892

/-! ## A016892.P7838153459339729634

`(A016861(n)+2)²²²`
-/

namespace A016892.P7838153459339729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016861 n + 2) ^ 2) ^ 2) ^ 2

end

end A016892.P7838153459339729634

namespace A016892

/-- `(A016861(n)+2)²²²` -/
def P7838153459339729634.Spec : Prop :=
  ∀ n, P7838153459339729634.a n = A016892 n

end A016892

/-! ## A016892.P16050914170309464492

`(1-A016897(n))²²²`
-/

namespace A016892.P16050914170309464492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016897 n) ^ 2) ^ 2) ^ 2

end

end A016892.P16050914170309464492

namespace A016892

/-- `(1-A016897(n))²²²` -/
def P16050914170309464492.Spec : Prop :=
  ∀ n, P16050914170309464492.a n = A016892 n

end A016892

/-! ## A016892.P12119116412488231378

`(A017341(n)/2)²²²`
-/

namespace A016892.P12119116412488231378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017341 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016892.P12119116412488231378

namespace A016892

/-- `(A017341(n)/2)²²²` -/
def P12119116412488231378.Spec : Prop :=
  ∀ n, P12119116412488231378.a n = (A016892 n : ℚ)

end A016892

/-! ## A016892.P1582492357359326196

`(A004767(n)+n)²²²`
-/

namespace A016892.P1582492357359326196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004767 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016892.P1582492357359326196

namespace A016892

/-- `(A004767(n)+n)²²²` -/
def P1582492357359326196.Spec : Prop :=
  ∀ n, P1582492357359326196.a n = A016892 n

end A016892

/-! ## A016892.P2874704885846651330

`(n-A016945(n))²²²`
-/

namespace A016892.P2874704885846651330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A016945 n) ^ 2) ^ 2) ^ 2

end

end A016892.P2874704885846651330

namespace A016892

/-- `(n-A016945(n))²²²` -/
def P2874704885846651330.Spec : Prop :=
  ∀ n, P2874704885846651330.a n = A016892 n

end A016892

/-! ## A016892.P15470343627769947003

`A016885(n)*A016891(n)`
-/

namespace A016892.P15470343627769947003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016891 n

end

end A016892.P15470343627769947003

namespace A016892

/-- `A016885(n)*A016891(n)` -/
def P15470343627769947003.Spec : Prop :=
  ∀ n, P15470343627769947003.a n = A016892 n

end A016892

/-! ## A016892.P633224085136056657

`A016886(n)*A016890(n)`
-/

namespace A016892.P633224085136056657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016890 n

end

end A016892.P633224085136056657

namespace A016892

/-- `A016886(n)*A016890(n)` -/
def P633224085136056657.Spec : Prop :=
  ∀ n, P633224085136056657.a n = A016892 n

end A016892

/-! ## A016892.P11460305763576389829

`A016887(n)*A016889(n)`
-/

namespace A016892.P11460305763576389829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n * A016889 n

end

end A016892.P11460305763576389829

namespace A016892

/-- `A016887(n)*A016889(n)` -/
def P11460305763576389829.Spec : Prop :=
  ∀ n, P11460305763576389829.a n = A016892 n

end A016892

/-! ## A016892.P16873216255813400927

`(A016891(n)/A016887(n))²`
-/

namespace A016892.P16873216255813400927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016891 n : ℚ) / (A016887 n : ℚ)) ^ 2

end

end A016892.P16873216255813400927

namespace A016892

/-- `(A016891(n)/A016887(n))²` -/
def P16873216255813400927.Spec : Prop :=
  ∀ n, P16873216255813400927.a n = (A016892 n : ℚ)

end A016892

/-! ## A016892.P5284424493834037995

`A016886(n)*A016887(n)*A016887(n)`
-/

namespace A016892.P5284424493834037995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016887 n * A016887 n

end

end A016892.P5284424493834037995

namespace A016892

/-- `A016886(n)*A016887(n)*A016887(n)` -/
def P5284424493834037995.Spec : Prop :=
  ∀ n, P5284424493834037995.a n = A016892 n

end A016892

/-! ## A016892.P16231783963965687370

`Δ[A005475(n)]²²²`
-/

namespace A016892.P16231783963965687370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016892.P16231783963965687370

namespace A016892

/-- `Δ[A005475(n)]²²²` -/
def P16231783963965687370.Spec : Prop :=
  ∀ n, P16231783963965687370.a n = A016892 n

end A016892

/-!
# A016893: a(n) = (5*n+3)^9.

The programs for A016893, the canonical program `A016893.P16330274285848702467` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016893 has offset 0).

The definition of A016893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^9` (program `A016893.P16330274285848702467`, by `A016893.P16330274285848702467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016893.P16330274285848702467

`(5*n+3)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016893

/-- `(5*n+3)^9` -/
def P16330274285848702467.Spec : Prop :=
  ∀ n, (P16330274285848702467.a n : ℤ) = A016893 n

theorem P16330274285848702467.correct : P16330274285848702467.Spec := by
  intro n
  simp only [A016893]

end A016893

/-! ## A016893.P3066806987895720846

`record[(n+3)^(gcd(5, n)+4)]`
-/

namespace A016893.P3066806987895720846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (Nat.gcd 5 n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016893.P3066806987895720846

namespace A016893

/-- `record[(n+3)^(gcd(5, n)+4)]` -/
def P3066806987895720846.Spec : Prop :=
  ∀ n, (P3066806987895720846.a n : ℤ) = A016893 n

end A016893

/-! ## A016893.P8045667791926679391

`A016885(n)*A016892(n)`
-/

namespace A016893.P8045667791926679391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016892 n

end

end A016893.P8045667791926679391

namespace A016893

/-- `A016885(n)*A016892(n)` -/
def P8045667791926679391.Spec : Prop :=
  ∀ n, P8045667791926679391.a n = A016893 n

end A016893

/-! ## A016893.P9882249630903407834

`A016886(n)*A016891(n)`
-/

namespace A016893.P9882249630903407834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n * A016891 n

end

end A016893.P9882249630903407834

namespace A016893

/-- `A016886(n)*A016891(n)` -/
def P9882249630903407834.Spec : Prop :=
  ∀ n, P9882249630903407834.a n = A016893 n

end A016893

/-! ## A016893.P7254415077826673850

`A016887(n)*A016890(n)`
-/

namespace A016893.P7254415077826673850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n * A016890 n

end

end A016893.P7254415077826673850

namespace A016893

/-- `A016887(n)*A016890(n)` -/
def P7254415077826673850.Spec : Prop :=
  ∀ n, P7254415077826673850.a n = A016893 n

end A016893

/-! ## A016893.P2269347906652085695

`A016888(n)*A016889(n)`
-/

namespace A016893.P2269347906652085695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n * A016889 n

end

end A016893.P2269347906652085695

namespace A016893

/-- `A016888(n)*A016889(n)` -/
def P2269347906652085695.Spec : Prop :=
  ∀ n, P2269347906652085695.a n = A016893 n

end A016893

/-! ## A016893.P8547501276961380982

`A016885(n)²*A016891(n)`
-/

namespace A016893.P8547501276961380982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016891 n

end

end A016893.P8547501276961380982

namespace A016893

/-- `A016885(n)²*A016891(n)` -/
def P8547501276961380982.Spec : Prop :=
  ∀ n, P8547501276961380982.a n = A016893 n

end A016893

/-! ## A016893.P14943670760575914976

`A016886(n)²*A016889(n)`
-/

namespace A016893.P14943670760575914976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n ^ 2 * A016889 n

end

end A016893.P14943670760575914976

namespace A016893

/-- `A016886(n)²*A016889(n)` -/
def P14943670760575914976.Spec : Prop :=
  ∀ n, P14943670760575914976.a n = A016893 n

end A016893

/-! ## A016893.P9017547480297888532

`A016888(n)²*A016885(n)`
-/

namespace A016893.P9017547480297888532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n ^ 2 * A016885 n

end

end A016893.P9017547480297888532

namespace A016893

/-- `A016888(n)²*A016885(n)` -/
def P9017547480297888532.Spec : Prop :=
  ∀ n, P9017547480297888532.a n = A016893 n

end A016893

/-! ## A016893.P10117127721642895504

`A016889(n)²/A016885(n)`
-/

namespace A016893.P10117127721642895504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n ^ 2 : ℚ) / (A016885 n : ℚ)

end

end A016893.P10117127721642895504

namespace A016893

/-- `A016889(n)²/A016885(n)` -/
def P10117127721642895504.Spec : Prop :=
  ∀ n, P10117127721642895504.a n = (A016893 n : ℚ)

end A016893

/-! ## A016893.P16494541022043333154

`A016886(n)²²*A016885(n)`
-/

namespace A016893.P16494541022043333154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 n ^ 2) ^ 2 * A016885 n

end

end A016893.P16494541022043333154

namespace A016893

/-- `A016886(n)²²*A016885(n)` -/
def P16494541022043333154.Spec : Prop :=
  ∀ n, P16494541022043333154.a n = A016893 n

end A016893

/-! ## A016893.P15674682439080292298

`2*A016889(n)²/A017341(n)`
-/

namespace A016893.P15674682439080292298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016889 n ^ 2 : ℚ) / (A017341 n : ℚ))

end

end A016893.P15674682439080292298

namespace A016893

/-- `2*A016889(n)²/A017341(n)` -/
def P15674682439080292298.Spec : Prop :=
  ∀ n, P15674682439080292298.a n = (A016893 n : ℚ)

end A016893

/-! ## A016893.P16747283752607576762

`A016885(n)*A016890(n)*A016885(n)²`
-/

namespace A016893.P16747283752607576762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A016890 n * A016885 n ^ 2

end

end A016893.P16747283752607576762

namespace A016893

/-- `A016885(n)*A016890(n)*A016885(n)²` -/
def P16747283752607576762.Spec : Prop :=
  ∀ n, P16747283752607576762.a n = A016893 n

end A016893

/-! ## A016893.P18405047387496553285

`A001017(5*n+3)`
-/

namespace A016893.P18405047387496553285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (5 * n + 3)

end

end A016893.P18405047387496553285

namespace A016893

/-- `A001017(5*n+3)` -/
def P18405047387496553285.Spec : Prop :=
  ∀ n, P18405047387496553285.a n = A016893 n

end A016893

/-! ## A016893.P4224651351363090422

`A114803(A017317(n))²*A114803(A017317(n))`
-/

namespace A016893.P4224651351363090422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114803 (A017317 n).toNat ^ 2 * A114803 (A017317 n).toNat

end

end A016893.P4224651351363090422

namespace A016893

/-- `A114803(A017317(n))²*A114803(A017317(n))` -/
def P4224651351363090422.Spec : Prop :=
  ∀ n, P4224651351363090422.a n = A016893 n

end A016893

/-!
# A016894: a(n) = (5*n + 3)^10.

The programs for A016894, the canonical program `A016894.P500116820286900057` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016894 has offset 0).

The definition of A016894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^10` (program `A016894.P500116820286900057`, by `A016894.P500116820286900057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016894.P500116820286900057

`(5*n+3)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016894

/-- `(5*n+3)^10` -/
def P500116820286900057.Spec : Prop :=
  ∀ n, (P500116820286900057.a n : ℤ) = A016894 n

theorem P500116820286900057.correct : P500116820286900057.Spec := by
  intro n
  simp only [A016894]

end A016894

/-! ## A016894.P3389974532734567779

`record[((n+3)^gcd(5, n))²]`
-/

namespace A016894.P3389974532734567779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.gcd 5 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016894.P3389974532734567779

namespace A016894

/-- `record[((n+3)^gcd(5, n))²]` -/
def P3389974532734567779.Spec : Prop :=
  ∀ n, (P3389974532734567779.a n : ℤ) = A016894 n

end A016894

/-! ## A016894.P110028658623462522

`(eq[n+2, lcm(5, n+2)]^5)²`
-/

namespace A016894.P110028658623462522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016894.P110028658623462522

namespace A016894

/-- `(eq[n+2, lcm(5, n+2)]^5)²` -/
def P110028658623462522.Spec : Prop :=
  ∀ n, (P110028658623462522.a n : ℤ) = A016894 n

end A016894

/-! ## A016894.P17685064148004243742

`A016889(n)²`
-/

namespace A016894.P17685064148004243742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 n ^ 2

end

end A016894.P17685064148004243742

namespace A016894

/-- `A016889(n)²` -/
def P17685064148004243742.Spec : Prop :=
  ∀ n, P17685064148004243742.a n = A016894 n

end A016894

/-! ## A016894.P4284906513104191634

`(A016885(n)^5)²`
-/

namespace A016894.P4284906513104191634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n ^ 5) ^ 2

end

end A016894.P4284906513104191634

namespace A016894

/-- `(A016885(n)^5)²` -/
def P4284906513104191634.Spec : Prop :=
  ∀ n, P4284906513104191634.a n = A016894 n

end A016894

/-! ## A016894.P11151642436391212487

`((A016873(n)+1)^5)²`
-/

namespace A016894.P11151642436391212487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 1) ^ 5) ^ 2

end

end A016894.P11151642436391212487

namespace A016894

/-- `((A016873(n)+1)^5)²` -/
def P11151642436391212487.Spec : Prop :=
  ∀ n, P11151642436391212487.a n = A016894 n

end A016894

/-! ## A016894.P11611442403912752340

`((A016897(n)-1)^5)²`
-/

namespace A016894.P11611442403912752340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016897 n - 1) ^ 5) ^ 2

end

end A016894.P11611442403912752340

namespace A016894

/-- `((A016897(n)-1)^5)²` -/
def P11611442403912752340.Spec : Prop :=
  ∀ n, P11611442403912752340.a n = A016894 n

end A016894

/-! ## A016894.P1707640685172465885

`((A004767(n)+n)^5)²`
-/

namespace A016894.P1707640685172465885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n + (n : ℤ)) ^ 5) ^ 2

end

end A016894.P1707640685172465885

namespace A016894

/-- `((A004767(n)+n)^5)²` -/
def P1707640685172465885.Spec : Prop :=
  ∀ n, P1707640685172465885.a n = A016894 n

end A016894

/-! ## A016894.P3439768880009140304

`A016887(n)*A016891(n)`
-/

namespace A016894.P3439768880009140304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n * A016891 n

end

end A016894.P3439768880009140304

namespace A016894

/-- `A016887(n)*A016891(n)` -/
def P3439768880009140304.Spec : Prop :=
  ∀ n, P3439768880009140304.a n = A016894 n

end A016894

/-! ## A016894.P6948915384843724617

`A016888(n)*A016890(n)`
-/

namespace A016894.P6948915384843724617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n * A016890 n

end

end A016894.P6948915384843724617

namespace A016894

/-- `A016888(n)*A016890(n)` -/
def P6948915384843724617.Spec : Prop :=
  ∀ n, P6948915384843724617.a n = A016894 n

end A016894

/-! ## A016894.P5551110919293576449

`(A016885(n)*A016888(n))²`
-/

namespace A016894.P5551110919293576449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n * A016888 n) ^ 2

end

end A016894.P5551110919293576449

namespace A016894

/-- `(A016885(n)*A016888(n))²` -/
def P5551110919293576449.Spec : Prop :=
  ∀ n, P5551110919293576449.a n = A016894 n

end A016894

/-! ## A016894.P14186739417260901000

`A016885(n)²*A016892(n)`
-/

namespace A016894.P14186739417260901000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016892 n

end

end A016894.P14186739417260901000

namespace A016894

/-- `A016885(n)²*A016892(n)` -/
def P14186739417260901000.Spec : Prop :=
  ∀ n, P14186739417260901000.a n = A016894 n

end A016894

/-! ## A016894.P7345305675405819486

`(A016886(n)*A016887(n))²`
-/

namespace A016894.P7345305675405819486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 n * A016887 n) ^ 2

end

end A016894.P7345305675405819486

namespace A016894

/-- `(A016886(n)*A016887(n))²` -/
def P7345305675405819486.Spec : Prop :=
  ∀ n, P7345305675405819486.a n = A016894 n

end A016894

/-! ## A016894.P5142924791108759921

`A016886(n)²*A016890(n)`
-/

namespace A016894.P5142924791108759921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 n ^ 2 * A016890 n

end

end A016894.P5142924791108759921

namespace A016894

/-- `A016886(n)²*A016890(n)` -/
def P5142924791108759921.Spec : Prop :=
  ∀ n, P5142924791108759921.a n = A016894 n

end A016894

/-! ## A016894.P14083889570949572526

`A016887(n)²*A016888(n)`
-/

namespace A016894.P14083889570949572526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n ^ 2 * A016888 n

end

end A016894.P14083889570949572526

namespace A016894

/-- `A016887(n)²*A016888(n)` -/
def P14083889570949572526.Spec : Prop :=
  ∀ n, P14083889570949572526.a n = A016894 n

end A016894

/-! ## A016894.P6684971635447666024

`A016888(n)²*A016886(n)`
-/

namespace A016894.P6684971635447666024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n ^ 2 * A016886 n

end

end A016894.P6684971635447666024

namespace A016894

/-- `A016888(n)²*A016886(n)` -/
def P6684971635447666024.Spec : Prop :=
  ∀ n, P6684971635447666024.a n = A016894 n

end A016894

/-! ## A016894.P11302297263450775700

`(A016890(n)/A016885(n))²`
-/

namespace A016894.P11302297263450775700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016890 n : ℚ) / (A016885 n : ℚ)) ^ 2

end

end A016894.P11302297263450775700

namespace A016894

/-- `(A016890(n)/A016885(n))²` -/
def P11302297263450775700.Spec : Prop :=
  ∀ n, P11302297263450775700.a n = (A016894 n : ℚ)

end A016894

/-! ## A016894.P11478280121328810791

`(A016891(n)/A016886(n))²`
-/

namespace A016894.P11478280121328810791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016891 n : ℚ) / (A016886 n : ℚ)) ^ 2

end

end A016894.P11478280121328810791

namespace A016894

/-- `(A016891(n)/A016886(n))²` -/
def P11478280121328810791.Spec : Prop :=
  ∀ n, P11478280121328810791.a n = (A016894 n : ℚ)

end A016894

/-! ## A016894.P5587198042359932542

`∪[A017309(n), A017369(n)]²`
-/

namespace A016894.P5587198042359932542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017369 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016894.P5587198042359932542

namespace A016894

/-- `∪[A017309(n), A017369(n)]²` -/
def P5587198042359932542.Spec : Prop :=
  ∀ n, (P5587198042359932542.a n : ℤ) = A016894 n

end A016894

/-! ## A016894.P9395338297087638374

`(A016885(n)²*A016887(n))²`
-/

namespace A016894.P9395338297087638374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n ^ 2 * A016887 n) ^ 2

end

end A016894.P9395338297087638374

namespace A016894

/-- `(A016885(n)²*A016887(n))²` -/
def P9395338297087638374.Spec : Prop :=
  ∀ n, P9395338297087638374.a n = A016894 n

end A016894

/-!
# A016895: a(n) = (5*n + 3)^11.

The programs for A016895, the canonical program `A016895.P11899522004543158406` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016895 has offset 0).

The definition of A016895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)^11` (program `A016895.P11899522004543158406`, by `A016895.P11899522004543158406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016895.P11899522004543158406

`(5*n+3)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016895

/-- `(5*n+3)^11` -/
def P11899522004543158406.Spec : Prop :=
  ∀ n, (P11899522004543158406.a n : ℤ) = A016895 n

theorem P11899522004543158406.correct : P11899522004543158406.Spec := by
  intro n
  simp only [A016895]

end A016895

/-! ## A016895.P2392814840095849882

`A016888(n)*A016891(n)`
-/

namespace A016895.P2392814840095849882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 n * A016891 n

end

end A016895.P2392814840095849882

namespace A016895

/-- `A016888(n)*A016891(n)` -/
def P2392814840095849882.Spec : Prop :=
  ∀ n, P2392814840095849882.a n = A016895 n

end A016895

/-! ## A016895.P2382571593418630833

`A016889(n)*A016890(n)`
-/

namespace A016895.P2382571593418630833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 n * A016890 n

end

end A016895.P2382571593418630833

namespace A016895

/-- `A016889(n)*A016890(n)` -/
def P2382571593418630833.Spec : Prop :=
  ∀ n, P2382571593418630833.a n = A016895 n

end A016895

/-! ## A016895.P3135821483564632161

`A016889(n)²*A017341(n)/2`
-/

namespace A016895.P3135821483564632161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 n ^ 2 * A017341 n : ℚ) / 2

end

end A016895.P3135821483564632161

namespace A016895

/-- `A016889(n)²*A017341(n)/2` -/
def P3135821483564632161.Spec : Prop :=
  ∀ n, P3135821483564632161.a n = (A016895 n : ℚ)

end A016895

/-! ## A016895.P3734917485533063619

`A008455(A016885(n))`
-/

namespace A016895.P3734917485533063619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016885 n).toNat

end

end A016895.P3734917485533063619

namespace A016895

/-- `A008455(A016885(n))` -/
def P3734917485533063619.Spec : Prop :=
  ∀ n, P3734917485533063619.a n = A016895 n

end A016895

/-! ## A016895.P14564942963605917944

`A008455(A016897(n)-1)`
-/

namespace A016895.P14564942963605917944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016897 n - 1).toNat

end

end A016895.P14564942963605917944

namespace A016895

/-- `A008455(A016897(n)-1)` -/
def P14564942963605917944.Spec : Prop :=
  ∀ n, P14564942963605917944.a n = A016895 n

end A016895

/-!
# A016896: 

The programs for A016896, there is no canonical definition to state claims against.
-/

/-! ## A016896.P9573822067492498282

`(5*n+3)^12`
-/

namespace A016896.P9573822067492498282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + 3) ^ 12

end

end A016896.P9573822067492498282

/-! ## A016896.P11137598799395552914

`(A016885(n)*A016886(n))²²`
-/

namespace A016896.P11137598799395552914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n * A016886 n) ^ 2) ^ 2

end

end A016896.P11137598799395552914

/-! ## A016896.P1439897118215031347

`A008456(A017341(n)/2)`
-/

namespace A016896.P1439897118215031347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (SequenceMachineLib.roundAway ((A017341 n : ℚ) / 2)).toNat

end

end A016896.P1439897118215031347

/-! ## A016896.P6070703904444453358

`A008456(A004767(n)+n)`
-/

namespace A016896.P6070703904444453358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n + (n : ℤ)).toNat

end

end A016896.P6070703904444453358

/-! ## A016896.P8234299913516386976

`A001014(A017341(n)/2)²`
-/

namespace A016896.P8234299913516386976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (SequenceMachineLib.roundAway ((A017341 n : ℚ) / 2)).toNat ^ 2

end

end A016896.P8234299913516386976

/-! ## A016896.P9435087562512747150

`A008456(A016969(n)-(n+2))`
-/

namespace A016896.P9435087562512747150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n - (n + 2 : ℤ)).toNat

end

end A016896.P9435087562512747150

/-! ## A016896.P5146355410995727034

`A008456(A016969(n)-2-n)`
-/

namespace A016896.P5146355410995727034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n - 2 - (n : ℤ)).toNat

end

end A016896.P5146355410995727034

/-! ## A016896.P6073355927851392925

`A000578(A017341(n)/2)²²`
-/

namespace A016896.P6073355927851392925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (SequenceMachineLib.roundAway ((A017341 n : ℚ) / 2)).toNat ^ 2) ^ 2

end

end A016896.P6073355927851392925

/-! ## A016896.P15733549430237384698

`A001014(A008585(2*n+1)-n)²`
-/

namespace A016896.P15733549430237384698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A008585 (2 * n + 1) - (n : ℤ)).toNat ^ 2

end

end A016896.P15733549430237384698

/-! ## A016896.P14510726464630459929

`A008456(A016777(2*n+1)-(n+1))`
-/

namespace A016896.P14510726464630459929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A016896.P14510726464630459929

/-! ## A016896.P15907672567280604899

`A008456(A016839(n)/A016838(n)+n)`
-/

namespace A016896.P15907672567280604899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (SequenceMachineLib.roundAway ((A016839 n : ℚ) / (A016838 n : ℚ) + (n : ℚ))).toNat

end

end A016896.P15907672567280604899

/-!
# A016897: a(n) = 5*n + 4.

The programs for A016897, the canonical program `A016897.P9287350145607759688` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016897 has offset 0).

The definition of A016897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+4` (program `A016897.P9287350145607759688`, by `A016897.P9287350145607759688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016897.P9287350145607759688

`5*n+4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016897

/-- `5*n+4` -/
def P9287350145607759688.Spec : Prop :=
  ∀ n, (P9287350145607759688.a n : ℤ) = A016897 n

theorem P9287350145607759688.correct : P9287350145607759688.Spec := by
  intro n
  simp only [A016897]

end A016897

/-!
# A016898: a(n) = (5*n + 4)^2.

The programs for A016898, the canonical program `A016898.P14343272817953415938` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016898 has offset 0).

The definition of A016898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)²` (program `A016898.P14343272817953415938`, by `A016898.P14343272817953415938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016898.P14343272817953415938

`(5*n+4)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016898

/-- `(5*n+4)²` -/
def P14343272817953415938.Spec : Prop :=
  ∀ n, (P14343272817953415938.a n : ℤ) = A016898 n

theorem P14343272817953415938.correct : P14343272817953415938.Spec := by
  intro n
  simp only [A016898]

end A016898

/-! ## A016898.P14450200884083099159

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=16, a(1)=81, a(2)=196`
-/

namespace A016898.P14450200884083099159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 81, 196] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016898.P14450200884083099159

namespace A016898

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14450200884083099159.Spec : Prop :=
  ∀ n, P14450200884083099159.a n = A016898 n

theorem P14450200884083099159.correct : P14450200884083099159.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016898, Nat.add_sub_cancel, A016898.P14450200884083099159.a, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016898, Nat.add_sub_cancel, A016898.P14450200884083099159.a, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016898

/-! ## A016898.P6256563213384202614

`record[(gcd(5, n)+n-1)²]`
-/

namespace A016898.P6256563213384202614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016898.P6256563213384202614

namespace A016898

/-- `record[(gcd(5, n)+n-1)²]` -/
def P6256563213384202614.Spec : Prop :=
  ∀ n, P6256563213384202614.a n = A016898 n

end A016898

/-! ## A016898.P18132730029062930322

`record[(1-abs(5*(1-n)))²]`
-/

namespace A016898.P18132730029062930322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |5 * (1 - (n : ℤ))|) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016898.P18132730029062930322

namespace A016898

/-- `record[(1-abs(5*(1-n)))²]` -/
def P18132730029062930322.Spec : Prop :=
  ∀ n, P18132730029062930322.a n = A016898 n

end A016898

/-! ## A016898.P3202028093590966911

`floor((∑[a(n-1)+2]-n²)²)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A016898.P3202028093590966911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2

end

end A016898.P3202028093590966911

namespace A016898

/-- `floor((∑[a(n-1)+2]-n²)²)` -/
def P3202028093590966911.Spec : Prop :=
  ∀ n, P3202028093590966911.a n = A016898 n

end A016898

/-! ## A016898.P11661609678271731322

`4*∑[ogf((4+8x)/(1-2x+x^2))]+n*n`
-/

namespace A016898.P11661609678271731322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n * n : ℤ)

end

end A016898.P11661609678271731322

namespace A016898

/-- `4*∑[ogf((4+8x)/(1-2x+x^2))]+n*n` -/
def P11661609678271731322.Spec : Prop :=
  ∀ n, P11661609678271731322.a n = A016898 n

end A016898

/-! ## A016898.P14075539238362870666

`4/((n+1)/∑[a(n-1)+5])²` with `a(0)=2`
-/

namespace A016898.P14075539238362870666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / ((n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2

end

end A016898.P14075539238362870666

namespace A016898

/-- `4/((n+1)/∑[a(n-1)+5])²` -/
def P14075539238362870666.Spec : Prop :=
  ∀ n, P14075539238362870666.a n = (A016898 n : ℚ)

end A016898

/-! ## A016898.P13140602127460290094

`sqrt(A016900(n))`
-/

namespace A016898.P13140602127460290094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016900 n : ℝ)

end

end A016898.P13140602127460290094

namespace A016898

/-- `sqrt(A016900(n))` -/
def P13140602127460290094.Spec : Prop :=
  ∀ n, P13140602127460290094.a n = (A016898 n : ℝ)

end A016898

/-! ## A016898.P13641971097593290418

`A017366(n)/4`
-/

namespace A016898.P13641971097593290418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017366 n : ℚ) / 4

end

end A016898.P13641971097593290418

namespace A016898

/-- `A017366(n)/4` -/
def P13641971097593290418.Spec : Prop :=
  ∀ n, P13641971097593290418.a n = (A016898 n : ℚ)

end A016898

/-! ## A016898.P6847578003710786578

`sqrt(sqrt(A016904(n)))`
-/

namespace A016898.P6847578003710786578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016904 n : ℝ))

end

end A016898.P6847578003710786578

namespace A016898

/-- `sqrt(sqrt(A016904(n)))` -/
def P6847578003710786578.Spec : Prop :=
  ∀ n, P6847578003710786578.a n = (A016898 n : ℝ)

end A016898

/-! ## A016898.P7203569258475319870

`A017365(n)²/4`
-/

namespace A016898.P7203569258475319870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017365 n ^ 2 : ℚ) / 4

end

end A016898.P7203569258475319870

namespace A016898

/-- `A017365(n)²/4` -/
def P7203569258475319870.Spec : Prop :=
  ∀ n, P7203569258475319870.a n = (A016898 n : ℚ)

end A016898

/-! ## A016898.P15764662155067587935

`sqrt(A017368(n))/4`
-/

namespace A016898.P15764662155067587935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017368 n : ℝ) / 4

end

end A016898.P15764662155067587935

namespace A016898

/-- `sqrt(A017368(n))/4` -/
def P15764662155067587935.Spec : Prop :=
  ∀ n, P15764662155067587935.a n = (A016898 n : ℝ)

end A016898

/-! ## A016898.P3866974266219290287

`A180577(n+1)+1`
-/

namespace A016898.P3866974266219290287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180577 (n + 1) + 1

end

end A016898.P3866974266219290287

namespace A016898

/-- `A180577(n+1)+1` -/
def P3866974266219290287.Spec : Prop :=
  ∀ n, P3866974266219290287.a n = A016898 n

end A016898

/-! ## A016898.P13778264825874615319

`A016902(n)^(1/3)`
-/

namespace A016898.P13778264825874615319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016902 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016898.P13778264825874615319

namespace A016898

/-- `A016902(n)^(1/3)` -/
def P13778264825874615319.Spec : Prop :=
  ∀ n, P13778264825874615319.a n = (A016898 n : ℝ)

end A016898

/-! ## A016898.P3310957238611001301

`A016899(n)^(2/3)`
-/

namespace A016898.P3310957238611001301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016899 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016898.P3310957238611001301

namespace A016898

/-- `A016899(n)^(2/3)` -/
def P3310957238611001301.Spec : Prop :=
  ∀ n, P3310957238611001301.a n = (A016898 n : ℝ)

end A016898

/-! ## A016898.P1852843967752672

`5*∑[A008592(n)+3]+1`
-/

namespace A016898.P1852843967752672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A016898.P1852843967752672

namespace A016898

/-- `5*∑[A008592(n)+3]+1` -/
def P1852843967752672.Spec : Prop :=
  ∀ n, P1852843967752672.a n = A016898 n

end A016898

/-! ## A016898.P1913787911778024135

`A017353(n)+A016886(n)`
-/

namespace A016898.P1913787911778024135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + A016886 n

end

end A016898.P1913787911778024135

namespace A016898

/-- `A017353(n)+A016886(n)` -/
def P1913787911778024135.Spec : Prop :=
  ∀ n, P1913787911778024135.a n = A016898 n

end A016898

/-! ## A016898.P1722569558453388160

`A258721(n)-A136316(n)`
-/

namespace A016898.P1722569558453388160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258721 n - A136316 n

end

end A016898.P1722569558453388160

namespace A016898

/-- `A258721(n)-A136316(n)` -/
def P1722569558453388160.Spec : Prop :=
  ∀ n, P1722569558453388160.a n = A016898 n

end A016898

/-! ## A016898.P17646521625611030932

`A016897(n)*A016897(n)`
-/

namespace A016898.P17646521625611030932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016897 n

end

end A016898.P17646521625611030932

namespace A016898

/-- `A016897(n)*A016897(n)` -/
def P17646521625611030932.Spec : Prop :=
  ∀ n, P17646521625611030932.a n = A016898 n

end A016898

/-! ## A016898.P11757935442502788948

`A016899(n)/A016897(n)`
-/

namespace A016898.P11757935442502788948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016899 n : ℚ) / (A016897 n : ℚ)

end

end A016898.P11757935442502788948

namespace A016898

/-- `A016899(n)/A016897(n)` -/
def P11757935442502788948.Spec : Prop :=
  ∀ n, P11757935442502788948.a n = (A016898 n : ℚ)

end A016898

/-!
# A016899: a(n) = (5n + 4)^3.

The programs for A016899, the canonical program `A016899.P5984754013059427978` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016899 has offset 0).

The definition of A016899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^3` (program `A016899.P5984754013059427978`, by `A016899.P5984754013059427978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016899.P5984754013059427978

`(5*n+4)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016899

/-- `(5*n+4)^3` -/
def P5984754013059427978.Spec : Prop :=
  ∀ n, (P5984754013059427978.a n : ℤ) = A016899 n

theorem P5984754013059427978.correct : P5984754013059427978.Spec := by
  intro n
  simp only [A016899]

end A016899

/-! ## A016899.P3717465477591307521

`record[(gcd(5, n)+n-1)^3]`
-/

namespace A016899.P3717465477591307521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016899.P3717465477591307521

namespace A016899

/-- `record[(gcd(5, n)+n-1)^3]` -/
def P3717465477591307521.Spec : Prop :=
  ∀ n, P3717465477591307521.a n = A016899 n

end A016899

/-! ## A016899.P8387726439364946544

`sqrt(A016902(n))`
-/

namespace A016899.P8387726439364946544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016902 n : ℝ)

end

end A016899.P8387726439364946544

namespace A016899

/-- `sqrt(A016902(n))` -/
def P8387726439364946544.Spec : Prop :=
  ∀ n, P8387726439364946544.a n = (A016899 n : ℝ)

end A016899

/-! ## A016899.P11349225713396620059

`A017367(n)/8`
-/

namespace A016899.P11349225713396620059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017367 n : ℚ) / 8

end

end A016899.P11349225713396620059

namespace A016899

/-- `A017367(n)/8` -/
def P11349225713396620059.Spec : Prop :=
  ∀ n, P11349225713396620059.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P3087635260496791261

`sqrt(A016898(n)^3)`
-/

namespace A016899.P3087635260496791261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016898 n ^ 3 : ℝ)

end

end A016899.P3087635260496791261

namespace A016899

/-- `sqrt(A016898(n)^3)` -/
def P3087635260496791261.Spec : Prop :=
  ∀ n, P3087635260496791261.a n = (A016899 n : ℝ)

end A016899

/-! ## A016899.P3374410027160362993

`A016897(n)*A016898(n)`
-/

namespace A016899.P3374410027160362993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016898 n

end

end A016899.P3374410027160362993

namespace A016899

/-- `A016897(n)*A016898(n)` -/
def P3374410027160362993.Spec : Prop :=
  ∀ n, P3374410027160362993.a n = A016899 n

end A016899

/-! ## A016899.P9258421477513012683

`A016900(n)/A016897(n)`
-/

namespace A016899.P9258421477513012683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n : ℚ) / (A016897 n : ℚ)

end

end A016899.P9258421477513012683

namespace A016899

/-- `A016900(n)/A016897(n)` -/
def P9258421477513012683.Spec : Prop :=
  ∀ n, P9258421477513012683.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P4451375027058216265

`A016901(n)/A016898(n)`
-/

namespace A016899.P4451375027058216265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n : ℚ) / (A016898 n : ℚ)

end

end A016899.P4451375027058216265

namespace A016899

/-- `A016901(n)/A016898(n)` -/
def P4451375027058216265.Spec : Prop :=
  ∀ n, P4451375027058216265.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P7745766825206463460

`A016903(n)/A016900(n)`
-/

namespace A016899.P7745766825206463460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016900 n : ℚ)

end

end A016899.P7745766825206463460

namespace A016899

/-- `A016903(n)/A016900(n)` -/
def P7745766825206463460.Spec : Prop :=
  ∀ n, P7745766825206463460.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P16422799135099834335

`∪[A017319(n), A017379(n)]`
-/

namespace A016899.P16422799135099834335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016899.P16422799135099834335

namespace A016899

/-- `∪[A017319(n), A017379(n)]` -/
def P16422799135099834335.Spec : Prop :=
  ∀ n, (P16422799135099834335.a n : ℤ) = A016899 n

end A016899

/-! ## A016899.P16592829741563914303

`A016900(n)²/A016901(n)`
-/

namespace A016899.P16592829741563914303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n ^ 2 : ℚ) / (A016901 n : ℚ)

end

end A016899.P16592829741563914303

namespace A016899

/-- `A016900(n)²/A016901(n)` -/
def P16592829741563914303.Spec : Prop :=
  ∀ n, P16592829741563914303.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P4969630252202387918

`A016901(n)/A016897(n)²`
-/

namespace A016899.P4969630252202387918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n : ℚ) / (A016897 n ^ 2 : ℚ)

end

end A016899.P4969630252202387918

namespace A016899

/-- `A016901(n)/A016897(n)²` -/
def P4969630252202387918.Spec : Prop :=
  ∀ n, P4969630252202387918.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P7553624701014592533

`A016901(n)²/A016903(n)`
-/

namespace A016899.P7553624701014592533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n ^ 2 : ℚ) / (A016903 n : ℚ)

end

end A016899.P7553624701014592533

namespace A016899

/-- `A016901(n)²/A016903(n)` -/
def P7553624701014592533.Spec : Prop :=
  ∀ n, P7553624701014592533.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P4780000738878709193

`A016903(n)/A016898(n)²`
-/

namespace A016899.P4780000738878709193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016898 n ^ 2 : ℚ)

end

end A016899.P4780000738878709193

namespace A016899

/-- `A016903(n)/A016898(n)²` -/
def P4780000738878709193.Spec : Prop :=
  ∀ n, P4780000738878709193.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P10667712818629596293

`(A016885(n)+1)*A016898(n)`
-/

namespace A016899.P10667712818629596293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 1) * A016898 n

end

end A016899.P10667712818629596293

namespace A016899

/-- `(A016885(n)+1)*A016898(n)` -/
def P10667712818629596293.Spec : Prop :=
  ∀ n, P10667712818629596293.a n = A016899 n

end A016899

/-! ## A016899.P5902772942435857451

`2*A016900(n)/A017365(n)`
-/

namespace A016899.P5902772942435857451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A016900 n : ℚ) / (A017365 n : ℚ)

end

end A016899.P5902772942435857451

namespace A016899

/-- `2*A016900(n)/A017365(n)` -/
def P5902772942435857451.Spec : Prop :=
  ∀ n, P5902772942435857451.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P4689267752000819100

`A016903(n)/A016897(n)²²`
-/

namespace A016899.P4689267752000819100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / ((A016897 n ^ 2) ^ 2 : ℚ)

end

end A016899.P4689267752000819100

namespace A016899

/-- `A016903(n)/A016897(n)²²` -/
def P4689267752000819100.Spec : Prop :=
  ∀ n, P4689267752000819100.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P11842056201988547769

`A016897(n)/(2/A017365(n))²`
-/

namespace A016899.P11842056201988547769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016897 n : ℚ) / (2 / (A017365 n : ℚ)) ^ 2

end

end A016899.P11842056201988547769

namespace A016899

/-- `A016897(n)/(2/A017365(n))²` -/
def P11842056201988547769.Spec : Prop :=
  ∀ n, P11842056201988547769.a n = (A016899 n : ℚ)

end A016899

/-! ## A016899.P4109237365822860811

`A016887(2*n+1)/8`
-/

namespace A016899.P4109237365822860811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016887 (2 * n + 1) : ℚ) / 8

end

end A016899.P4109237365822860811

namespace A016899

/-- `A016887(2*n+1)/8` -/
def P4109237365822860811.Spec : Prop :=
  ∀ n, P4109237365822860811.a n = (A016899 n : ℚ)

end A016899

