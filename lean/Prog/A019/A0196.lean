import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C014
import Seq.B000.C021
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C013

/-!
# A019613: Expansion of 1/((1-4*x)*(1-7*x)*(1-9*x)).

The programs for A019613, the canonical program `A019613.P7805268830255396809` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019613 has offset 0).

The definition of A019613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-20x+127x^2-252x^3))` (program `A019613.P7805268830255396809`, by `A019613.P7805268830255396809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019613.P7805268830255396809

`ogf(1/(1-20x+127x^2-252x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019613

/-- `ogf(1/(1-20x+127x^2-252x^3))` -/
def P7805268830255396809.Spec : Prop :=
  ∀ n, P7805268830255396809.a n = A019613 n

theorem P7805268830255396809.correct : P7805268830255396809.Spec := by
  intro n
  simp only [A019613]

end A019613

/-! ## A019613.P13903313505101760533

`16*a(n-1)-63*a(n-2)+4^n` with `a(0)=1, a(1)=20`
-/

namespace A019613.P13903313505101760533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (4 ^ n : ℤ)

end

end A019613.P13903313505101760533

namespace A019613

/-- `16*a(n-1)-63*a(n-2)+4^n` -/
def P13903313505101760533.Spec : Prop :=
  ∀ n, P13903313505101760533.a n = A019613 n

end A019613

/-! ## A019613.P1018385637013682196

`16*4^n/15-49*7^n/6+81*9^n/10`
-/

namespace A019613.P1018385637013682196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 4 ^ n : ℚ) / 15 - (49 * 7 ^ n : ℚ) / 6 + (81 * 9 ^ n : ℚ) / 10

end

end A019613.P1018385637013682196

namespace A019613

/-- `16*4^n/15-49*7^n/6+81*9^n/10` -/
def P1018385637013682196.Spec : Prop :=
  ∀ n, P1018385637013682196.a n = (A019613 n : ℚ)

end A019613

/-! ## A019613.P1259116081533226264

`(A025972(n)+A016312(n))/2`
-/

namespace A019613.P1259116081533226264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025972 n + A016312 n : ℚ) / 2

end

end A019613.P1259116081533226264

namespace A019613

/-- `(A025972(n)+A016312(n))/2` -/
def P1259116081533226264.Spec : Prop :=
  ∀ n, P1259116081533226264.a n = (A019613 n : ℚ)

end A019613

/-!
# A019618: Expansion of 1/((1-4*x)*(1-7*x)*(1-10*x)).

The programs for A019618, the canonical program `A019618.P17771959360364056164` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019618 has offset 0).

The definition of A019618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-21x+138x^2-280x^3))` (program `A019618.P17771959360364056164`, by `A019618.P17771959360364056164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019618.P16205834622629129256

`17*a(n-1)-70*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019618.P16205834622629129256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (4 ^ n : ℤ)

end

end A019618.P16205834622629129256

namespace A019618

/-- `17*a(n-1)-70*a(n-2)+4^n` -/
def P16205834622629129256.Spec : Prop :=
  ∀ n, P16205834622629129256.a n = A019618 n

end A019618

/-! ## A019618.P17771959360364056164

`ogf(1/(1-21x+138x^2-280x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019618

/-- `ogf(1/(1-21x+138x^2-280x^3))` -/
def P17771959360364056164.Spec : Prop :=
  ∀ n, P17771959360364056164.a n = A019618 n

theorem P17771959360364056164.correct : P17771959360364056164.Spec := by
  intro n
  simp only [A019618]

end A019618

/-! ## A019618.P10163142430027564740

`(2*4^(n+1)-7^(n+2)+5*10^(n+1))/9`
-/

namespace A019618.P10163142430027564740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ (n + 1) : ℤ) - (7 ^ (n + 2) : ℤ) + (5 * 10 ^ (n + 1) : ℤ) : ℚ) / 9

end

end A019618.P10163142430027564740

namespace A019618

/-- `(2*4^(n+1)-7^(n+2)+5*10^(n+1))/9` -/
def P10163142430027564740.Spec : Prop :=
  ∀ n, P10163142430027564740.a n = (A019618 n : ℚ)

end A019618

/-! ## A019618.P10448145628977143139

`A016181(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019618.P10448145628977143139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016181 n + 4 * a (n - 1)

end

end A019618.P10448145628977143139

namespace A019618

/-- `A016181(n)+4*a(n-1)` -/
def P10448145628977143139.Spec : Prop :=
  ∀ n, P10448145628977143139.a n = A019618 n

end A019618

/-! ## A019618.P12539735868867352234

`7*a(n-1)+A016157(n)` with `a(0)=1`
-/

namespace A019618.P12539735868867352234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + A016157 n

end

end A019618.P12539735868867352234

namespace A019618

/-- `7*a(n-1)+A016157(n)` -/
def P12539735868867352234.Spec : Prop :=
  ∀ n, P12539735868867352234.a n = A019618 n

end A019618

/-! ## A019618.P12022274561077809554

`2*A016252(n)-A016225(n)`
-/

namespace A019618.P12022274561077809554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016252 n - A016225 n

end

end A019618.P12022274561077809554

namespace A019618

/-- `2*A016252(n)-A016225(n)` -/
def P12022274561077809554.Spec : Prop :=
  ∀ n, P12022274561077809554.a n = A019618 n

end A019618

/-!
# A019623: Expansion of 1/((1-4*x)*(1-7*x)*(1-11*x)).

The programs for A019623, the canonical program `A019623.P5270057527989260971` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019623 has offset 0).

The definition of A019623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+149x^2-308x^3))` (program `A019623.P5270057527989260971`, by `A019623.P5270057527989260971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019623.P5270057527989260971

`ogf(1/(1-22x+149x^2-308x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019623

/-- `ogf(1/(1-22x+149x^2-308x^3))` -/
def P5270057527989260971.Spec : Prop :=
  ∀ n, P5270057527989260971.a n = A019623 n

theorem P5270057527989260971.correct : P5270057527989260971.Spec := by
  intro n
  simp only [A019623]

end A019623

/-! ## A019623.P16051018784221998972

`18*a(n-1)-77*a(n-2)+4^n` with `a(0)=1, a(1)=22`
-/

namespace A019623.P16051018784221998972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (4 ^ n : ℤ)

end

end A019623.P16051018784221998972

namespace A019623

/-- `18*a(n-1)-77*a(n-2)+4^n` -/
def P16051018784221998972.Spec : Prop :=
  ∀ n, P16051018784221998972.a n = A019623 n

end A019623

/-! ## A019623.P8897645033186349016

`4^(n+2)/21+11^(n+2)/28-7^(n+2)/12`
-/

namespace A019623.P8897645033186349016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℚ) / 21 + (11 ^ (n + 2) : ℚ) / 28 - (7 ^ (n + 2) : ℚ) / 12

end

end A019623.P8897645033186349016

namespace A019623

/-- `4^(n+2)/21+11^(n+2)/28-7^(n+2)/12` -/
def P8897645033186349016.Spec : Prop :=
  ∀ n, P8897645033186349016.a n = (A019623 n : ℚ)

end A019623

/-! ## A019623.P14949057758635019806

`(A019687(n)+A019613(n))/2`
-/

namespace A019623.P14949057758635019806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019687 n + A019613 n : ℚ) / 2

end

end A019623.P14949057758635019806

namespace A019623

/-- `(A019687(n)+A019613(n))/2` -/
def P14949057758635019806.Spec : Prop :=
  ∀ n, P14949057758635019806.a n = (A019623 n : ℚ)

end A019623

/-!
# A019628: Expansion of 1/((1-4*x)*(1-7*x)*(1-12*x)).

The programs for A019628, the canonical program `A019628.P3569422243199071373` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019628 has offset 0).

The definition of A019628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+160x^2-336x^3))` (program `A019628.P3569422243199071373`, by `A019628.P3569422243199071373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019628.P3569422243199071373

`ogf(1/(1-23x+160x^2-336x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019628

/-- `ogf(1/(1-23x+160x^2-336x^3))` -/
def P3569422243199071373.Spec : Prop :=
  ∀ n, P3569422243199071373.a n = A019628 n

theorem P3569422243199071373.correct : P3569422243199071373.Spec := by
  intro n
  simp only [A019628]

end A019628

/-! ## A019628.P2074264496398320172

`19*a(n-1)-84*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019628.P2074264496398320172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (4 ^ n : ℤ)

end

end A019628.P2074264496398320172

namespace A019628

/-- `19*a(n-1)-84*a(n-2)+4^n` -/
def P2074264496398320172.Spec : Prop :=
  ∀ n, P2074264496398320172.a n = A019628 n

end A019628

/-! ## A019628.P4889037865253801938

`2*4^n/3-7^(n+2)/15+18*12^n/5`
-/

namespace A019628.P4889037865253801938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℚ) / 3 - (7 ^ (n + 2) : ℚ) / 15 + (18 * 12 ^ n : ℚ) / 5

end

end A019628.P4889037865253801938

namespace A019628

/-- `2*4^n/3-7^(n+2)/15+18*12^n/5` -/
def P4889037865253801938.Spec : Prop :=
  ∀ n, P4889037865253801938.a n = (A019628 n : ℚ)

end A019628

/-!
# A019645: Decimal expansion of sqrt(Pi*e).

The programs for A019645, there is no canonical definition to state claims against.
-/

/-! ## A019645.P16350019195999203080

`A074916(n)-A074917(n)`
-/

namespace A019645.P16350019195999203080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074916 (n + 1) - A074917 (n + 1)

end

end A019645.P16350019195999203080

/-!
# A019664: Expansion of 1/((1-4x)(1-8x)(1-9x)).

The programs for A019664, the canonical program `A019664.P7145517900530001286` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019664 has offset 0).

The definition of A019664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-21x+140x^2-288x^3))` (program `A019664.P7145517900530001286`, by `A019664.P7145517900530001286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019664.P15122626023031465653

`17*a(n-1)-72*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019664.P15122626023031465653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (4 ^ n : ℤ)

end

end A019664.P15122626023031465653

namespace A019664

/-- `17*a(n-1)-72*a(n-2)+4^n` -/
def P15122626023031465653.Spec : Prop :=
  ∀ n, P15122626023031465653.a n = A019664 n

end A019664

/-! ## A019664.P7145517900530001286

`ogf(1/(1-21x+140x^2-288x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019664

/-- `ogf(1/(1-21x+140x^2-288x^3))` -/
def P7145517900530001286.Spec : Prop :=
  ∀ n, P7145517900530001286.a n = A019664 n

theorem P7145517900530001286.correct : P7145517900530001286.Spec := by
  intro n
  simp only [A019664]

end A019664

/-! ## A019664.P550991871301287604

`4^(n+1)/5+9^(n+2)/5-2*8^(n+1)`
-/

namespace A019664.P550991871301287604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℚ) / 5 + (9 ^ (n + 2) : ℚ) / 5 - (2 * 8 ^ (n + 1) : ℚ)

end

end A019664.P550991871301287604

namespace A019664

/-- `4^(n+1)/5+9^(n+2)/5-2*8^(n+1)` -/
def P550991871301287604.Spec : Prop :=
  ∀ n, P550991871301287604.a n = (A019664 n : ℚ)

end A019664

/-!
# A019671: Expansion of 1/((1-4x)(1-8x)(1-10x)).

The programs for A019671, the canonical program `A019671.P10798225209259944271` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019671 has offset 0).

The definition of A019671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+152x^2-320x^3))` (program `A019671.P10798225209259944271`, by `A019671.P10798225209259944271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019671.P10798225209259944271

`ogf(1/(1-22x+152x^2-320x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019671

/-- `ogf(1/(1-22x+152x^2-320x^3))` -/
def P10798225209259944271.Spec : Prop :=
  ∀ n, P10798225209259944271.a n = A019671 n

theorem P10798225209259944271.correct : P10798225209259944271.Spec := by
  intro n
  simp only [A019671]

end A019671

/-! ## A019671.P12193430180649729118

`18*a(n-1)-80*a(n-2)+4^n` with `a(0)=1, a(1)=22`
-/

namespace A019671.P12193430180649729118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (4 ^ n : ℤ)

end

end A019671.P12193430180649729118

namespace A019671

/-- `18*a(n-1)-80*a(n-2)+4^n` -/
def P12193430180649729118.Spec : Prop :=
  ∀ n, P12193430180649729118.a n = A019671 n

end A019671

/-! ## A019671.P7956654283908001890

`2*4^n/3-8^(n+1)+25*10^n/3`
-/

namespace A019671.P7956654283908001890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℚ) / 3 - (8 ^ (n + 1) : ℚ) + (25 * 10 ^ n : ℚ) / 3

end

end A019671.P7956654283908001890

namespace A019671

/-- `2*4^n/3-8^(n+1)+25*10^n/3` -/
def P7956654283908001890.Spec : Prop :=
  ∀ n, P7956654283908001890.a n = (A019671 n : ℚ)

end A019671

/-! ## A019671.P760167888032213597

`2^n*A016282(n)`
-/

namespace A019671.P760167888032213597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016282 n

end

end A019671.P760167888032213597

namespace A019671

/-- `2^n*A016282(n)` -/
def P760167888032213597.Spec : Prop :=
  ∀ n, P760167888032213597.a n = A019671 n

end A019671

/-! ## A019671.P12884498479367264217

`lcm(record[A077957(n)], A016282(n))`
-/

namespace A019671.P12884498479367264217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016282 n)

end

end A019671.P12884498479367264217

namespace A019671

/-- `lcm(record[A077957(n)], A016282(n))` -/
def P12884498479367264217.Spec : Prop :=
  ∀ n, (P12884498479367264217.a n : ℤ) = A019671 n

end A019671

/-! ## A019671.P11024452249031171321

`A016282(n)*A077957(2*n)`
-/

namespace A019671.P11024452249031171321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n * A077957 (2 * n)

end

end A019671.P11024452249031171321

namespace A019671

/-- `A016282(n)*A077957(2*n)` -/
def P11024452249031171321.Spec : Prop :=
  ∀ n, P11024452249031171321.a n = A019671 n

end A019671

/-!
# A019672: Expansion of 1/((1-4x)(1-8x)(1-11x)).

The programs for A019672, the canonical program `A019672.P2625054399577786731` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019672 has offset 0).

The definition of A019672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+164x^2-352x^3))` (program `A019672.P2625054399577786731`, by `A019672.P2625054399577786731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019672.P9743396269094188032

`19*a(n-1)-88*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019672.P9743396269094188032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (4 ^ n : ℤ)

end

end A019672.P9743396269094188032

namespace A019672

/-- `19*a(n-1)-88*a(n-2)+4^n` -/
def P9743396269094188032.Spec : Prop :=
  ∀ n, P9743396269094188032.a n = A019672 n

end A019672

/-! ## A019672.P2625054399577786731

`ogf(1/(1-23x+164x^2-352x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019672

/-- `ogf(1/(1-23x+164x^2-352x^3))` -/
def P2625054399577786731.Spec : Prop :=
  ∀ n, P2625054399577786731.a n = A019672 n

theorem P2625054399577786731.correct : P2625054399577786731.Spec := by
  intro n
  simp only [A019672]

end A019672

/-! ## A019672.P15295020026104552430

`11^(n+2)/21-2*8^(n+1)/3+4^(n+1)/7`
-/

namespace A019672.P15295020026104552430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ (n + 2) : ℚ) / 21 - (2 * 8 ^ (n + 1) : ℚ) / 3 + (4 ^ (n + 1) : ℚ) / 7

end

end A019672.P15295020026104552430

namespace A019672

/-- `11^(n+2)/21-2*8^(n+1)/3+4^(n+1)/7` -/
def P15295020026104552430.Spec : Prop :=
  ∀ n, P15295020026104552430.a n = (A019672 n : ℚ)

end A019672

/-!
# A019673: Decimal expansion of Pi/6.

The programs for A019673, there is no canonical definition to state claims against.
-/

/-! ## A019673.P16712522067777808155

`9-A228715(n)`
-/

namespace A019673.P16712522067777808155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A228715 n

end

end A019673.P16712522067777808155

/-!
# A019677: Expansion of 1/((1-4x)(1-8x)(1-12x)).

The programs for A019677, the canonical program `A019677.P6238627361877639010` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019677 has offset 0).

The definition of A019677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-24x+176x^2-384x^3))` (program `A019677.P6238627361877639010`, by `A019677.P6238627361877639010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019677.P6238627361877639010

`ogf(1/(1-24x+176x^2-384x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019677

/-- `ogf(1/(1-24x+176x^2-384x^3))` -/
def P6238627361877639010.Spec : Prop :=
  ∀ n, P6238627361877639010.a n = A019677 n

theorem P6238627361877639010.correct : P6238627361877639010.Spec := by
  intro n
  simp only [A019677]

end A019677

/-! ## A019677.P9548686817391362904

`(4^n-8*8^n+9*12^n)/2`
-/

namespace A019677.P9548686817391362904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (8 * 8 ^ n : ℤ) + (9 * 12 ^ n : ℤ) : ℚ) / 2

end

end A019677.P9548686817391362904

namespace A019677

/-- `(4^n-8*8^n+9*12^n)/2` -/
def P9548686817391362904.Spec : Prop :=
  ∀ n, P9548686817391362904.a n = (A019677 n : ℚ)

end A019677

/-! ## A019677.P16679642819922517696

`24*a(n-1)-176*a(n-2)+384*a(n-3)` with `a(0)=1, a(1)=24, a(2)=400`
-/

namespace A019677.P16679642819922517696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 400] fun n a =>
  24 * a (n - 1) - 176 * a (n - 2) + 384 * a (n - 3)

end

end A019677.P16679642819922517696

namespace A019677

/-- `24*a(n-1)-176*a(n-2)+384*a(n-3)` -/
def P16679642819922517696.Spec : Prop :=
  ∀ n, P16679642819922517696.a n = A019677 n

end A019677

/-! ## A019677.P3372979673156868494

`4^n*A000392(n+3)`
-/

namespace A019677.P3372979673156868494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000392 (n + 3)

end

end A019677.P3372979673156868494

namespace A019677

/-- `4^n*A000392(n+3)` -/
def P3372979673156868494.Spec : Prop :=
  ∀ n, P3372979673156868494.a n = A019677 n

end A019677

/-! ## A019677.P12067654745597844540

`∑[∑[A027649(n)]]*4^n`
-/

namespace A019677.P12067654745597844540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (4 ^ n : ℤ)

end

end A019677.P12067654745597844540

namespace A019677

/-- `∑[∑[A027649(n)]]*4^n` -/
def P12067654745597844540.Spec : Prop :=
  ∀ n, P12067654745597844540.a n = A019677 n

end A019677

/-! ## A019677.P12732714225576513576

`4^n*∑[A001047(n+1)]`
-/

namespace A019677.P12732714225576513576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P12732714225576513576

namespace A019677

/-- `4^n*∑[A001047(n+1)]` -/
def P12732714225576513576.Spec : Prop :=
  ∀ n, P12732714225576513576.a n = A019677 n

end A019677

/-! ## A019677.P8618201944610118502

`A000079(n)*A016283(n+2)`
-/

namespace A019677.P8618201944610118502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016283 (n + 2)

end

end A019677.P8618201944610118502

namespace A019677

/-- `A000079(n)*A016283(n+2)` -/
def P8618201944610118502.Spec : Prop :=
  ∀ n, P8618201944610118502.a n = A019677 n

end A019677

/-! ## A019677.P15856152271190674402

`A000079(n)²*∑[∑[A027649(n)]]`
-/

namespace A019677.P15856152271190674402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P15856152271190674402

namespace A019677

/-- `A000079(n)²*∑[∑[A027649(n)]]` -/
def P15856152271190674402.Spec : Prop :=
  ∀ n, P15856152271190674402.a n = A019677 n

end A019677

/-! ## A019677.P5791372667314519691

`A122803(n)²*∑[∑[A027649(n)]]`
-/

namespace A019677.P5791372667314519691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P5791372667314519691

namespace A019677

/-- `A122803(n)²*∑[∑[A027649(n)]]` -/
def P5791372667314519691.Spec : Prop :=
  ∀ n, P5791372667314519691.a n = A019677 n

end A019677

/-! ## A019677.P2927825215012036152

`∑[A001047(n+1)]*A000079(n)²`
-/

namespace A019677.P2927825215012036152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A019677.P2927825215012036152

namespace A019677

/-- `∑[A001047(n+1)]*A000079(n)²` -/
def P2927825215012036152.Spec : Prop :=
  ∀ n, P2927825215012036152.a n = A019677 n

end A019677

/-!
# A019682: Expansion of 1/((1-4*x)*(1-9*x)*(1-10*x)).

The programs for A019682, the canonical program `A019682.P8509360231958205220` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019682 has offset 0).

The definition of A019682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+166x^2-360x^3))` (program `A019682.P8509360231958205220`, by `A019682.P8509360231958205220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019682.P8509360231958205220

`ogf(1/(1-23x+166x^2-360x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019682

/-- `ogf(1/(1-23x+166x^2-360x^3))` -/
def P8509360231958205220.Spec : Prop :=
  ∀ n, P8509360231958205220.a n = A019682 n

theorem P8509360231958205220.correct : P8509360231958205220.Spec := by
  intro n
  simp only [A019682]

end A019682

/-! ## A019682.P3324349732116862997

`19*a(n-1)-90*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019682.P3324349732116862997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (4 ^ n : ℤ)

end

end A019682.P3324349732116862997

namespace A019682

/-- `19*a(n-1)-90*a(n-2)+4^n` -/
def P3324349732116862997.Spec : Prop :=
  ∀ n, P3324349732116862997.a n = A019682 n

end A019682

/-! ## A019682.P2900266695007904281

`2*A019671(n)-A019664(n)`
-/

namespace A019682.P2900266695007904281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019671 n - A019664 n

end

end A019682.P2900266695007904281

namespace A019682

/-- `2*A019671(n)-A019664(n)` -/
def P2900266695007904281.Spec : Prop :=
  ∀ n, P2900266695007904281.a n = A019682 n

end A019682

/-! ## A019682.P614084252173474259

`(A020970(n)+A019613(n))/2`
-/

namespace A019682.P614084252173474259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020970 n + A019613 n : ℚ) / 2

end

end A019682.P614084252173474259

namespace A019682

/-- `(A020970(n)+A019613(n))/2` -/
def P614084252173474259.Spec : Prop :=
  ∀ n, P614084252173474259.a n = (A019682 n : ℚ)

end A019682

/-! ## A019682.P17026787417235110983

`A016157(n+1)-A016153(n+2)`
-/

namespace A019682.P17026787417235110983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016157 (n + 1) - A016153 (n + 2)

end

end A019682.P17026787417235110983

namespace A019682

/-- `A016157(n+1)-A016153(n+2)` -/
def P17026787417235110983.Spec : Prop :=
  ∀ n, P17026787417235110983.a n = A019682 n

end A019682

/-! ## A019682.P8236724635356927386

`(A019613(n)+Δ[A016252(n)-A016250(n)])/2`
-/

namespace A019682.P8236724635356927386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 n - A016250 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019613 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A019682.P8236724635356927386

namespace A019682

/-- `(A019613(n)+Δ[A016252(n)-A016250(n)])/2` -/
def P8236724635356927386.Spec : Prop :=
  ∀ n, P8236724635356927386.a n = (A019682 n : ℚ)

end A019682

/-! ## A019682.P2269600181884427477

`2*A019687(n)-A019742(n)`
-/

namespace A019682.P2269600181884427477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019687 n - A019742 n

end

end A019682.P2269600181884427477

namespace A019682

/-- `2*A019687(n)-A019742(n)` -/
def P2269600181884427477.Spec : Prop :=
  ∀ n, P2269600181884427477.a n = A019682 n

end A019682

/-!
# A019687: Expansion of 1/((1-4x)(1-9x)(1-11x)).

The programs for A019687, the canonical program `A019687.P2143745270350237987` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019687 has offset 0).

The definition of A019687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-24x+179x^2-396x^3))` (program `A019687.P2143745270350237987`, by `A019687.P2143745270350237987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019687.P2143745270350237987

`ogf(1/(1-24x+179x^2-396x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019687

/-- `ogf(1/(1-24x+179x^2-396x^3))` -/
def P2143745270350237987.Spec : Prop :=
  ∀ n, P2143745270350237987.a n = A019687 n

theorem P2143745270350237987.correct : P2143745270350237987.Spec := by
  intro n
  simp only [A019687]

end A019687

/-! ## A019687.P17922009008950822254

`20*a(n-1)-99*a(n-2)+4^n` with `a(0)=1, a(1)=24`
-/

namespace A019687.P17922009008950822254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (4 ^ n : ℤ)

end

end A019687.P17922009008950822254

namespace A019687

/-- `20*a(n-1)-99*a(n-2)+4^n` -/
def P17922009008950822254.Spec : Prop :=
  ∀ n, P17922009008950822254.a n = A019687 n

end A019687

/-! ## A019687.P12527810006143929849

`4^(n+2)/35+11^(n+2)/14-9^(n+2)/10`
-/

namespace A019687.P12527810006143929849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℚ) / 35 + (11 ^ (n + 2) : ℚ) / 14 - (9 ^ (n + 2) : ℚ) / 10

end

end A019687.P12527810006143929849

namespace A019687

/-- `4^(n+2)/35+11^(n+2)/14-9^(n+2)/10` -/
def P12527810006143929849.Spec : Prop :=
  ∀ n, P12527810006143929849.a n = (A019687 n : ℚ)

end A019687

/-! ## A019687.P10569153267317019588

`(A019742(n)+A019682(n))/2`
-/

namespace A019687.P10569153267317019588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019742 n + A019682 n : ℚ) / 2

end

end A019687.P10569153267317019588

namespace A019687

/-- `(A019742(n)+A019682(n))/2` -/
def P10569153267317019588.Spec : Prop :=
  ∀ n, P10569153267317019588.a n = (A019687 n : ℚ)

end A019687

/-!
# A019692: Decimal expansion of 2*Pi.

The programs for A019692, there is no canonical definition to state claims against.
-/

/-! ## A019692.P16259298549452164002

`A002266(Δ[A059582(n+1)+10*A059582(n)])%10`
-/

namespace A019692.P16259298549452164002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1) + 10 * A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (f1 (n + 1) - f1 n).toNat) 10

end

end A019692.P16259298549452164002

/-! ## A019692.P13781919165650331047

`A155481(n)+A000796(n)`
-/

namespace A019692.P13781919165650331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A000796 (n + 1)

end

end A019692.P13781919165650331047

/-! ## A019692.P15771150250585497948

`A155481(n)+Δ[A059582(n)]`
-/

namespace A019692.P15771150250585497948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + (f1 (n + 1) - f1 n)

end

end A019692.P15771150250585497948

/-! ## A019692.P15914063112710933410

`A155481(n)+9-A030644(n)`
-/

namespace A019692.P15914063112710933410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + (9 - A030644 (n + 1))

end

end A019692.P15914063112710933410

/-! ## A019692.P11950757953662966494

`A155481(n)+A001355(Δ[n²])`
-/

namespace A019692.P11950757953662966494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A019692.P11950757953662966494

/-! ## A019692.P14599443623397916340

`A155481(n)+A110766(Δ[n²])`
-/

namespace A019692.P14599443623397916340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A019692.P14599443623397916340

/-! ## A019692.P10420292275151792648

`A123152(n+1)+A155481(n)-1`
-/

namespace A019692.P10420292275151792648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) + (A155481 n - 1)

end

end A019692.P10420292275151792648

